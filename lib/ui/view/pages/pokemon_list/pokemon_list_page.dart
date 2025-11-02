import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:pokedex_3d/ui/providers/connectivity_notifier.dart';
import 'package:pokedex_3d/ui/providers/filter_sheet_provider.dart';
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
          return Consumer(
            builder: (context, ref, child) {
              final isVisible = ref.watch(isFilterVisible);
              ref.watch(connectivityStatusProvider).whenData((value) {
                switch (value) {
                  case InternetStatus.connected:
                    return AnimatedScale(
                      duration: Duration(milliseconds: isVisible ? 100 : 1000),
                      scale: isVisible ? 0 : 1,
                      curve: Curves.easeOut,
                      child: AnimatedOpacity(
                        opacity: isVisible ? 0 : 1,
                        duration: Duration(
                          milliseconds: isVisible ? 100 : 1000,
                        ),
                        child: FloatingActionButton(
                          child: const Icon(Icons.tune),
                          onPressed: () => _showFilterModel(context, ref),
                        ),
                      ),
                    );
                  case InternetStatus.disconnected:
                    return SizedBox.shrink();
                }
              });
              return SizedBox.shrink();
            },
          );
        },
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              _buildSliverAppBar(context),
              SliverToBoxAdapter(child: OfflineBannerWidget()),
              const PokemonListBody(),
            ],
          ),
        ),
      ),
    );
  }

  SliverAppBar _buildSliverAppBar(BuildContext context) {
    return SliverAppBar(
      pinned: false,
      floating: true,
      surfaceTintColor: Colors.transparent,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      toolbarHeight: 56,
      elevation: 1,
      title: Text(
        "PokeDex 3D",

        style: Theme.of(context).textTheme.headlineMedium,
      ),
      flexibleSpace: FlexibleSpaceBar(
        // preferredSize: Size.fromHeight(64), // Height for search field + padding
        background: Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: Consumer(
            builder: (context, ref, child) {
              final connectivity = ref.watch(connectivityStatusProvider);
              connectivity.whenData((value) {
                switch (value) {
                  case InternetStatus.connected:
                    return SearchField();

                  case InternetStatus.disconnected:
                    return SizedBox.shrink();
                }
              });
              return SizedBox.shrink();
            },
          ),
        ),
      ),
    );
  }

  void _showFilterModel(BuildContext context, WidgetRef ref) {
    ref.read(isFilterVisible.notifier).state = true;

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
