import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:pokedex_3d/ui/providers/model_controller_provider.dart';
import 'package:pokedex_3d/ui/providers/pokemon_page_viewmodel_provider.dart';
import 'package:pokedex_3d/ui/view/widgets/pokemon_details_tab.dart';
import 'package:pokedex_3d/ui/view/widgets/pokemon_title_widget.dart';
import 'package:pokedex_3d/ui/view/widgets/toggle_animation_widget.dart';
import 'package:pokedex_3d/ui/view/widgets/toggle_model_view_widget.dart';
import 'package:pokedex_3d/ui/viewmodel/model_view_toggle.dart';

Map<String, String> statsLables = {
  'hp': 'HP',
  'attack': 'ATK',
  'defense': 'DEF',
  'special-attack': 'S.ATK',
  'special-defense': 'S.DEF',
  'speed': 'SPD',
};

class ModelViewWidget extends ConsumerWidget {
  const ModelViewWidget({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonState = ref.watch(pokemonPageViewmodelProvider);
    final currentView = ref.watch(toggleModelView);
    Logger().i('modeliewwidget ${pokemonState.modelPath}');

    pokemonState.modelPath.maybeWhen(
      error: (e, st) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(e.toString())));
      },
      orElse: () {},
    );
    return LayoutBuilder(
      builder: (context, constrints) {
        final detailHeight = constrints.maxHeight * 3 / 8;
        return Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                height: detailHeight,
                child: AnimatedOpacity(
                  opacity: currentView.isFullScreen ? 0 : 1,
                  duration: const Duration(milliseconds: 300),
                  child: const PokemonDetailsTab(),
                ),
              ),
            ),
            AnimatedContainer(
              height: currentView.isFullScreen
                  ? constrints.maxHeight
                  : constrints.maxHeight - detailHeight,
              duration: const Duration(milliseconds: 300),
              child: Stack(
                children: [
                  Center(
                    child: Image.asset(
                      pokemonState.backgroundImg!,
                      width: MediaQuery.of(context).size.width * 0.6,
                      color: Colors.white12,

                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  ModelViewer(
                    src:
                        pokemonState.modelPath.value ??
                        '${pokemonState.modelPath.isLoading}',
                    autoPlay: true,
                    onWebViewCreated: (controller) {
                      Logger().i("assigning the controller");
                      ref.read(modelControllerProvider.notifier).controller =
                          controller;
                      Logger().i("controller asigned");
                    },
                  ),
                  const Positioned(
                    right: 10,
                    bottom: 10,
                    child: Column(
                      children: [
                        ToggleAnimationButton(),
                        SizedBox(height: 10),
                        ToggleModelViewWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Positioned(
              top: 0,
              left: 0,
              child: SizedBox(height: 200, child: PokemonTitleWidget()),
            ),
          ],
        );
      },
    );
  }
}
