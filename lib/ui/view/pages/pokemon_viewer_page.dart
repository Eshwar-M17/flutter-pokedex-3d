import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:pokedex_3d/core/error_widget/error_widget.dart';
import 'package:pokedex_3d/ui/providers/connectivity_notifier.dart';
import 'package:pokedex_3d/ui/providers/pokemon_3d_model_list_notifier.dart';
import 'package:pokedex_3d/ui/view/widgets/empty_collection_widget.dart';
import 'package:pokedex_3d/ui/view/widgets/pokemon_form_tab.dart';
import 'package:pokedex_3d/ui/view/widgets/gradient_background.dart';
import 'package:pokedex_3d/ui/view/widgets/model_view_widget.dart';
import 'package:pokedex_3d/ui/view/widgets/pokemon_list_widget.dart';

class PokemonViewerPage extends StatelessWidget {
  const PokemonViewerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Scaffold(body: _PokemonViewerBody()));
  }
}

class _PokemonViewerBody extends ConsumerWidget {
  const _PokemonViewerBody();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokeList = ref.watch(pokemon3dModelListNotifierProider);

    return pokeList.when(
      data: (data) {
        if (data.isEmpty) {
          return const EmptyCollectionWidget();
        }
        return const GradientBackground(
          child: Column(
            children: [
              OfflineBannerWidget(),
              PokemonFormTab(),
              Expanded(child: ModelViewWidget()),
              SizedBox(height: 80, child: PokemonListWidget()),
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

class OfflineBannerWidget extends ConsumerWidget {
  const OfflineBannerWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final connection = ref.watch(connectivityStatusProvider);

    return connection.when(
      data: (status) => status == InternetStatus.disconnected
          ? Container(
              width: double.infinity,
              color: Colors.redAccent,
              padding: const EdgeInsets.all(8),
              child: const Text(
                'Offline mode: some features may be unavailable',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            )
          : const SizedBox.shrink(),
      loading: () => const SizedBox.shrink(),
      error: (_, _) => const SizedBox.shrink(),
    );
  }
}
