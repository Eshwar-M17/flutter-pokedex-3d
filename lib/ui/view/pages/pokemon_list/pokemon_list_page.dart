import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:pokedex_3d/core/utils/logger.dart';
import 'package:pokedex_3d/ui/providers/connectivity_notifier.dart';

import 'package:pokedex_3d/ui/view/pages/pokemon_list/section/filter_modal_sheet.dart';
import 'package:pokedex_3d/ui/view/pages/pokemon_list/section/pokemon_list_body.dart';
import 'package:pokedex_3d/ui/view/pages/pokemon_list/section/search_field.dart';
import 'package:pokedex_3d/ui/view/widgets/offline_banner_widget.dart';
import 'package:pokedex_3d/ui/view/widgets/toggle_theme_widget.dart';
import 'package:pokedex_3d/ui/viewmodel/pokemon_list_page_viewmodel.dart';

class PokemonListPage extends ConsumerStatefulWidget {
  const PokemonListPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PokemonListPageState();
}

class _PokemonListPageState extends ConsumerState<PokemonListPage> {
  late final ScrollController _scollController;

  @override
  void initState() {
    super.initState();
    _scollController = ScrollController();
  }

  @override
  void dispose() {
    _scollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(pokemonListPageViewmodelProvider.select((s) => s.pokemonList), (
      prev,
      next,
    ) {
      if (prev!.isLoading && next.hasValue && _scollController.hasClients) {
        _scollController.animateTo(
          0,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      }
    });

    return Scaffold(
      floatingActionButton: Builder(
        builder: (context) {
          return EmptyListHandler(
            child: FilterFab(
              onTap: () {
                _showFilterModel(context);
              },
            ),
          );
        },
      ),

      body: SafeArea(
        child: RefreshHandler(
          child: CustomScrollView(
            controller: _scollController,
            slivers: [
              SliverToBoxAdapter(child: OfflineBannerWidget()),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                sliver: _buildSliverAppBar(context),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                sliver: const PokemonListBody(),
              ),
              SliverFillRemaining(),
            ],
          ),
        ),
      ),
    );
  }

  EmptyListHandler _buildSliverAppBar(BuildContext context) {
    return EmptyListHandler(
      onEmpty: SliverAppBar(
        floating: true,
        automaticallyImplyLeading: false, // Removes back button
        title: Text("PokeDex 3D"),
        actions: [ToggleThemeButton()],
      ),
      child: SliverAppBar(
        floating: true,
        automaticallyImplyLeading: false, // Removes back button
        expandedHeight: 100,
        elevation: 1,
        title: Text("PokeDex 3D"),
        actions: [ToggleThemeButton()],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(
            64,
          ), // Height for search field + padding
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: SearchField(),
          ),
        ),
      ),
    );
  }

  void _showFilterModel(BuildContext context) {
    showBottomSheet(
      context: context,
      elevation: 3,

      builder: (BuildContext context) {
        return const FilterModalSheet();
      },
    );
  }
}

class EmptyListHandler extends ConsumerWidget {
  final Widget child;
  final Widget onEmpty;

  const EmptyListHandler({
    required this.child,
    this.onEmpty = const SizedBox.shrink(),
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonListState = ref.watch(pokemonListPageViewmodelProvider);
    final list = pokemonListState.pokemonList.value;
    if (pokemonListState.pokemonList.isLoading || list == null) {
      return child;
    }

    if (pokemonListState.fromCache &&
        pokemonListState.isOffline &&
        list.isEmpty) {
      return onEmpty;
    } else {
      return child;
    }
  }
}

class FilterFab extends ConsumerWidget {
  final Function onTap;
  const FilterFab({super.key, required this.onTap});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isVisible = ref.watch(
      pokemonListPageViewmodelProvider.select((s) => s.isFilterVisible),
    );

    return AnimatedScale(
      duration: Duration(milliseconds: isVisible ? 100 : 1000),
      scale: isVisible ? 0 : 1,
      curve: Curves.easeOut,
      child: AnimatedOpacity(
        opacity: isVisible ? 0 : 1,
        duration: Duration(milliseconds: isVisible ? 100 : 1000),
        child: FloatingActionButton(
          child: const Icon(Icons.tune),
          onPressed: () {
            ref
                .read(pokemonListPageViewmodelProvider.notifier)
                .setFilterVisible(true);
            onTap();
          },
        ),
      ),
    );
  }
}

class ConnectionHandler extends ConsumerWidget {
  final Widget onConnected;
  final Widget onDisconnected;
  final Widget onLoading;
  final Widget onError;

  static const Widget _placeholder = SizedBox.shrink();
  static const Widget _sliverPlaceholder = SliverToBoxAdapter(
    child: SizedBox.shrink(),
  );

  const ConnectionHandler({
    required this.onConnected,
    this.onDisconnected = _placeholder,
    this.onLoading = _placeholder,
    this.onError = _placeholder,
    super.key,
  });

  const ConnectionHandler.sliverType({
    required this.onConnected,
    this.onDisconnected = _sliverPlaceholder,
    this.onLoading = _sliverPlaceholder,
    this.onError = _sliverPlaceholder,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final connection = ref.watch(connectivityStatusProvider);
    return connection.when(
      data: (InternetStatus status) {
        switch (status) {
          case InternetStatus.connected:
            return onConnected;
          case InternetStatus.disconnected:
            return onDisconnected;
        }
      },
      error: (Object error, StackTrace stackTrace) => onError,
      loading: () => onLoading,
    );
  }
}

class RefreshHandler extends ConsumerWidget {
  final Widget child;

  const RefreshHandler({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(pokemonListPageViewmodelProvider.notifier);

    return RefreshIndicator(
      onRefresh: () async {
        notifier.refresh();
      },
      child: child,
    );
  }
}
