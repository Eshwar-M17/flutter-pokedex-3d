import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:pokedex_3d/ui/providers/connectivity_notifier.dart';
import 'package:pokedex_3d/ui/providers/filter_sheet_provider.dart';
import 'package:pokedex_3d/ui/providers/pokemon_3d_model_list_notifier.dart';
import 'package:pokedex_3d/ui/view/pages/pokemon_list/section/filter_modal_sheet.dart';
import 'package:pokedex_3d/ui/view/pages/pokemon_list/section/pokemon_list_body.dart';
import 'package:pokedex_3d/ui/view/pages/pokemon_list/section/search_field.dart';
import 'package:pokedex_3d/ui/view/widgets/offline_banner_widget.dart';

class PokemonListPage extends StatelessWidget {
  const PokemonListPage({super.key});

  @override
  Widget build(BuildContext context) {
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              EmptyListHandler(
                onEmpty: SliverAppBar(
                  pinned: false,
                  floating: true,
                  surfaceTintColor: Colors.transparent,
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  toolbarHeight: 56,
                  elevation: 1,
                  // expandedHeight: 120,
                  title: Text(
                    "PokeDex 3D",

                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                child: SliverAppBar(
                  pinned: false,
                  floating: true,
                  surfaceTintColor: Colors.transparent,
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  toolbarHeight: 56,
                  elevation: 1,
                  // expandedHeight: 120,
                  title: Text(
                    "PokeDex 3D",

                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
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
              ),
              SliverToBoxAdapter(child: OfflineBannerWidget()),
              const PokemonListBody(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSliverAppBar(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final connectivity = ref.watch(connectivityStatusProvider);

        return connectivity.when(
          data: (InternetStatus data) {
            switch (data) {
              case InternetStatus.connected:
                return SliverAppBar(
                  pinned: false,
                  floating: true,
                  surfaceTintColor: Colors.transparent,
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  toolbarHeight: 56,
                  elevation: 1,
                  // expandedHeight: 120,
                  title: Text(
                    "PokeDex 3D",

                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(
                      64,
                    ), // Height for search field + padding
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: SearchField(),
                    ),
                  ),
                );
              case InternetStatus.disconnected:
                return SliverAppBar(
                  pinned: false,
                  floating: true,
                  surfaceTintColor: Colors.transparent,
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  toolbarHeight: 56,
                  elevation: 1,
                  // expandedHeight: 120,
                  title: Text(
                    "PokeDex 3D",

                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                );
            }
          },
          error: (_, _) => SizedBox.shrink(),
          loading: () => SizedBox.shrink(),
        );
      },
    );
  }

  void _showFilterModel(BuildContext context) {
    showBottomSheet(
      context: context,
      elevation: 3,
      backgroundColor: Colors.transparent,

      builder: (BuildContext context) {
        return const FilterModalSheet();
      },
    );
  }
}

class CustomAppBar extends ConsumerWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return EmptyListHandler(
      onEmpty: SliverAppBar(
        pinned: false,
        floating: true,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        toolbarHeight: 56,
        elevation: 1,
        // expandedHeight: 120,
        title: Text(
          "PokeDex 3D",

          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      child: SliverAppBar(
        pinned: false,
        floating: true,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        toolbarHeight: 56,
        elevation: 1,
        // expandedHeight: 120,
        title: Text(
          "PokeDex 3D",

          style: Theme.of(context).textTheme.headlineMedium,
        ),
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
    final isListEmpty = ref.watch(
      pokemon3dModelListNotifierProvider.select(
        (s) => s.value?.isEmpty ?? true,
      ),
    );

    if (isListEmpty) {
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
    final isVisible = ref.watch(isFilterVisible);

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
            ref.read(isFilterVisible.notifier).state = true;
            onTap();
          },
        ),
      ),
    );
  }
}
