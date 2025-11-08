import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_3d/ui/view/pages/pokemon_view/widgets/evolution_chain_widget.dart';
import 'package:pokedex_3d/ui/view/pages/pokemon_view/widgets/stats_widget.dart';

class PokeDetailsTab extends ConsumerStatefulWidget {
  const PokeDetailsTab({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PokeDetailsTabState();
}

class _PokeDetailsTabState extends ConsumerState<PokeDetailsTab>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  final List<Tab> tabList = const [Tab(text: "Status"), Tab(text: "Evolution")];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabList.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          tabs: tabList,
          labelStyle: TextStyle(
            color: Theme.of(context).colorScheme.onInverseSurface,
            fontSize: 16,
          ),
          unselectedLabelColor: Theme.of(context).colorScheme.onInverseSurface,
          controller: _tabController,
          indicatorColor: Theme.of(context).colorScheme.onInverseSurface,
          indicatorWeight: 2,

          dividerHeight: 0,
        ),
        const SizedBox(height: 15),
        Flexible(
          fit: FlexFit.tight,
          child: TabBarView(
            controller: _tabController,
            children: const [StatsWidget(), EvolutionChainWidget()],
          ),
        ),
      ],
    );
  }
}
