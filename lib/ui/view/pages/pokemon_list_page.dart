import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_3d/data/models/models/pokemon3d_model/pokemon_3d.dart';
import 'package:pokedex_3d/ui/providers/pokemon_3d_model_list_notifier.dart';
import 'package:pokedex_3d/ui/view/widgets/filter_section.dart';
import 'package:pokedex_3d/ui/view/widgets/poke_card_widget.dart';

class PokemonListPage extends ConsumerWidget {
  const PokemonListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonListState = ref.watch(pokemon3dModelListNotifierProider);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.tune),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            elevation: 3,
            barrierColor: Colors.transparent,
            backgroundColor: Colors.transparent,

            builder: (BuildContext context) {
              return Container(
                height: 80,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(254, 254, 254, 1),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black.withAlpha(25),
                      offset: Offset(0, -4),
                      blurRadius: 10,
                      spreadRadius: 0,
                    ),
                    BoxShadow(
                      color: Colors.black.withAlpha(10),
                      offset: const Offset(0, -6),
                      blurRadius: 20,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: const FilterSection(),
              );
            },
          );
        },
      ),
      backgroundColor: const Color.fromRGBO(254, 254, 254, 1),
      // appBar: _buildAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CustomScrollView(
            slivers: [
              const SliverAppBar(
                pinned: false,
                floating: true,
                surfaceTintColor: Colors.transparent,
                backgroundColor: Color.fromRGBO(254, 254, 254, 1),
                toolbarHeight: 56,
                elevation: 1,
                title: Text(
                  "PokeDex 3D",
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    letterSpacing: 0.15,
                  ),
                ),
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(
                    64,
                  ), // Height for search field + padding
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 16),
                    child: SearchField(),
                  ),
                ),
              ),

              // const SliverAppBar(title: SearchField(), floating: true),

              // const SliverToBoxAdapter(child: SearchField()),
              pokemonListState.when(
                data: (pokeList) => PokemonGrid(pokeList: pokeList),

                error: (e, st) => SliverAppBar(
                  flexibleSpace: Center(child: Text(e.toString())),
                ),
                loading: () => const SliverAppBar(
                  flexibleSpace: Center(child: CircularProgressIndicator()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 244, 251, 251),
      title: const Text(
        "PokeDex 3D",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}

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
              .read(pokemon3dModelListNotifierProider.notifier)
              .searchPokemon(value);
        },
        onTapOutside: (_) => _focusNode.unfocus(),
        backgroundColor: WidgetStatePropertyAll(Colors.grey[100]),
        elevation: const WidgetStatePropertyAll(0),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12),
          ),
        ),
        hintStyle: const WidgetStatePropertyAll(
          TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black45,
          ),
        ),
        textStyle: const WidgetStatePropertyAll(
          TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),

        constraints: const BoxConstraints(maxHeight: 44),
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
                            .read(pokemon3dModelListNotifierProider.notifier)
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

class PokemonGrid extends StatelessWidget {
  final List<Pokemon3dModel> pokeList;
  const PokemonGrid({super.key, required this.pokeList});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 3 / 2,
      ),
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        final pokemon = pokeList[index];
        return PokeCardWidget(pokemon3d: pokemon, index: index);
      }, childCount: pokeList.length),
    );
  }
}

class _HeaderDelegate extends SliverPersistentHeaderDelegate {
  final double height;
  final Widget child;

  _HeaderDelegate({required this.height, required this.child});
  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: const Color.fromARGB(255, 244, 251, 251),
      child: child,
    );
  }

  @override
  double get maxExtent => height;

  @override
  double get minExtent => height;

  @override
  bool shouldRebuild(covariant _HeaderDelegate oldDelegate) {
    return oldDelegate.child != child || oldDelegate.height != height;
  }
}
