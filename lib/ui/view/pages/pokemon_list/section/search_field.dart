import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_3d/ui/providers/pokemon_3d_model_list_notifier.dart';
import 'package:pokedex_3d/ui/viewmodel/pokemon_list_page_viewmodel.dart';

class SearchField extends ConsumerStatefulWidget {
  const SearchField({super.key});

  @override
  ConsumerState<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends ConsumerState<SearchField> {
  late final TextEditingController controller;
  late final FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: SearchBar(
        controller: controller,
        focusNode: _focusNode,
        hintText: 'Name or Id',
        leading: const Icon(Icons.search_rounded, size: 22),
        onSubmitted: (value) {
          ref
              .read(pokemonListPageViewmodelProvider.notifier)
              .searchPokemon(value);
        },
        onTapOutside: (_) => _focusNode.unfocus(),

        trailing: [
          ValueListenableBuilder<TextEditingValue>(
            valueListenable: controller,
            builder: (context, value, _) {
              return value.text.isNotEmpty
                  ? IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        controller.clear();
                        ref
                            .read(pokemon3dModelListNotifierProvider.notifier)
                            .clearFilter();
                      },
                    )
                  : const SizedBox.shrink();
            },
          ),
        ],
      ),
    );
  }
}
