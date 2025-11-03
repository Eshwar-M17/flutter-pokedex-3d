import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_3d/ui/providers/filter_sheet_provider.dart';
import 'package:pokedex_3d/ui/providers/pokemon_3d_model_list_notifier.dart';
import 'package:pokedex_3d/ui/view/pages/pokemon_list/section/filter_modal_sheet.dart';
import 'package:pokedex_3d/ui/view/pages/pokemon_list/section/pokemon_list_body.dart';
import 'package:pokedex_3d/ui/view/pages/pokemon_list/section/search_field.dart';
import 'package:pokedex_3d/ui/view/widgets/offline_banner_widget.dart';
import 'package:pokedex_3d/ui/viewmodel/pokemon_list_page_viewmodel.dart';

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
              SliverToBoxAdapter(child: OfflineBannerWidget()),
              _buildSliverAppar(context),

              const PokemonListBody(),
            ],
          ),
        ),
      ),
    );
  }

  EmptyListHandler _buildSliverAppar(BuildContext context) {
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
        leading: null,
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
