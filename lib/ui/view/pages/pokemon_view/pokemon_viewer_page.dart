import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_3d/ui/errors/error_widget.dart';
import 'package:pokedex_3d/core/utils/logger.dart';
import 'package:pokedex_3d/ui/providers/pokemon_3d_model_list_notifier.dart';
import 'package:pokedex_3d/ui/view/pages/pokemon_list/pokemon_list_page.dart';
import 'package:pokedex_3d/ui/view/widgets/empty_collection_widget.dart';
import 'package:pokedex_3d/ui/view/widgets/offline_banner_widget.dart';
import 'package:pokedex_3d/ui/view/pages/pokemon_view/section/pokemon_form_tab.dart';
import 'package:pokedex_3d/ui/view/pages/pokemon_view/section/gradient_background.dart';
import 'package:pokedex_3d/ui/view/pages/pokemon_view/section/model_view_widget.dart';
import 'package:pokedex_3d/ui/view/pages/pokemon_view/section/poke_carousel_widget.dart';

class PokemonViewerPage extends StatelessWidget {
  const PokemonViewerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: _PokemonViewerBody()));
  }
}

class _PokemonViewerBody extends ConsumerWidget {
  const _PokemonViewerBody();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    log.i(
      "_PokemonViewerBody build  calling pokemon3dModelListNotifierProider ",
    );

    final pokeList = ref.watch(pokemon3dModelListNotifierProvider);
    log.i("_PokemonViewerBody build  pokelist data $pokeList");

    return pokeList.when(
      data: (data) {
        if (data.isEmpty) {
          log.i(
            "_PokemonViewerBody build  empty list returining EmptyCollectionWidget ",
          );

          return const EmptyCollectionWidget();
        }
        log.i("_PokemonViewerBody build  pokelist length ${data.length}");

        return GradientBackground(
          child: Column(
            children: [
              ConnectionHandler(
                onDisconnected: OfflineBannerWidget(),
                onConnected: SizedBox.shrink(),
              ),
              Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Theme.of(context).colorScheme.onInverseSurface,
                        ),
                      ),
                    ),
                  ),
                  Align(alignment: Alignment.center, child: PokemonFormTab()),
                ],
              ),
              Expanded(child: ModelViewWidget()),
              SizedBox(height: 80, child: PokeCarouselWidget()),
            ],
          ),
        );
      },
      loading: () {
        return const Center(child: CircularProgressIndicator());
      },
      error: (e, st) {
        return CustomErrorWidget(errorMessage: e.toString());
      },
    );
  }
}
