import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_3d/ui/view/widgets/evolution_chain_widget.dart';
import 'package:pokedex_3d/ui/view/widgets/states_widget.dart';

class PokemonDetailsTab extends ConsumerStatefulWidget {
  const PokemonDetailsTab({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PokemonDetailsTabState();
}

class _PokemonDetailsTabState extends ConsumerState<PokemonDetailsTab>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  final List<Tab> tabList = const [Tab(text: "Status"), Tab(text: "Evolution")];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabList.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          tabs: tabList,
          labelStyle: const TextStyle(color: Colors.white, fontSize: 16),
          unselectedLabelColor: Colors.white,
          controller: _tabController,
          indicatorColor: Colors.white,
          indicatorWeight: 2,
    
          dividerHeight: 0,
        ),
        const SizedBox(height: 15),
        Flexible(
          fit: FlexFit.tight,
          child: TabBarView(
            controller: _tabController,
            children: const [StatesWidget(), EvolutionChainWidget()],
          ),
        ),
      ],
    );
  }
}
