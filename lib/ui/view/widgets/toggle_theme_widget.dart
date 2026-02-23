import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_3d/ui/providers/theme_mode_provider/theme_mode_notifier.dart';

class ToggleThemeButton extends ConsumerWidget {
  const ToggleThemeButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(appThemeModeProvider); // Watch the state for the icon

    return IconButton(
      onPressed: () => ref.read(appThemeModeProvider.notifier).toggleThemeModel(),
      icon: Icon(
        themeMode == ThemeMode.light
            ? Icons.dark_mode_rounded
            : Icons.light_mode_rounded,
      ),
    );
  }
}
