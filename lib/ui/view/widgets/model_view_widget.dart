import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:pokedex_3d/ui/providers/model_controller_provider.dart';
import 'package:pokedex_3d/ui/providers/pokemon_page_viewmodel_provider.dart';
import 'package:pokedex_3d/ui/view/widgets/pokemon_details_tab.dart';
import 'package:pokedex_3d/ui/view/widgets/pokemon_title_widget.dart';
import 'package:pokedex_3d/ui/view/widgets/toggle_animation_widget.dart';
import 'package:pokedex_3d/ui/view/widgets/fullscreen_toggle_button.dart';
import 'package:pokedex_3d/ui/viewmodel/fullscreen_toggle.dart';

Map<String, String> statsLables = {
  'hp': 'HP',
  'attack': 'ATK',
  'defense': 'DEF',
  'special-attack': 'S.ATK',
  'special-defense': 'S.DEF',
  'speed': 'SPD',
};

class ModelViewWidget extends ConsumerStatefulWidget {
  const ModelViewWidget({super.key});
  @override
  ConsumerState<ModelViewWidget> createState() => _ModelViewWidgetState();
}

class _ModelViewWidgetState extends ConsumerState<ModelViewWidget> {
  Logger log = Logger();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final modelPath = ref.watch(
      pokemonPageViewmodelProvider.select((s) => s.modelPath),
    );
    log.i(modelPath);
    final currentView = ref.watch(fullscreenToggleProvider);
    Logger().i('modeliewwidget $modelPath');

    ref.listen(pokemonPageViewmodelProvider.select((s) => s.modelPath), (
      prev,
      next,
    ) {
      next.maybeWhen(
        error: (e, st) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(e.toString())));
        },
        data: (data) {
          log.t('adding post call back');
          WidgetsBinding.instance.addPostFrameCallback((_) {
            log.t("Build completed, now calling webcomponent");
            ref
                .read(pokemonPageViewmodelProvider.notifier)
                .notifyWebComponent();
          });
        },

        orElse: () {},
      );
    });

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
                  child: const PokeDetailsTab(),
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
                  const Center(child: TypeBackgroundOverlay()),
                  ModelViewer(
                    src: modelPath.value ?? '${modelPath.isLoading}',
                    autoPlay: true,
                    onWebViewCreated: (controller) {
                      Logger().i("assigning the controller");
                      ref.read(model3dControllerProvider.notifier).controller =
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
                        FullscreenToggleButton(),
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

class TypeBackgroundOverlay extends ConsumerWidget {
  const TypeBackgroundOverlay({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bgImg = ref.watch(
      pokemonPageViewmodelProvider.select((s) => s.backgroundImg),
    );

    return Image.asset(
      bgImg!,
      width: MediaQuery.of(context).size.width * 0.6,
      color: Colors.white12,

      fit: BoxFit.fitHeight,
    );
  }
}
