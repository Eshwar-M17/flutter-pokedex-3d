import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_3d/core/enums.dart';
import 'package:pokedex_3d/core/logger.dart';
import 'package:pokedex_3d/ui/providers/filter_sheet_provider.dart';
import 'package:pokedex_3d/ui/providers/pokemon_3d_model_list_notifier.dart';
import 'package:pokedex_3d/ui/view/pages/pokemon_list/widgets/custom_dropdown_menu.dart';

class FilterSection extends ConsumerStatefulWidget {
  const FilterSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _FilterSectionState();
  }
}

class _FilterSectionState extends ConsumerState {
  PokemonForm? selectedForm = PokemonForm.allforms;
  PokemonGen? selectedGen = PokemonGen.gen0;
  late final TextEditingController _genController;
  late final TextEditingController _formController;
  late final List<DropdownMenuEntry<PokemonGen>> _genEntries;
  late final List<DropdownMenuEntry<PokemonForm>> _formEntries;
  @override
  void initState() {
    super.initState();
    _genController = TextEditingController();
    _formController = TextEditingController();
    _genEntries = _createGenEntries();
    _formEntries = _createFormEntries();
  }

  @override
  void dispose() {
    _formController.dispose();
    _genController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomDropdownMenu<PokemonGen>(
          label: "Gen",
          controller: _genController,
          dropdownMenuEntries: _genEntries,
          onSelected: _onGenSelected,
          width: 120,
        ),
        CustomDropdownMenu<PokemonForm>(
          label: "Forms",
          controller: _formController,
          onSelected: _onFormSelected,
          dropdownMenuEntries: _formEntries,
          width: 145,
        ),
        IconButton.filled(
          onPressed: _clearFilter,
          iconSize: 20,
          color: Colors.black54,
          style: IconButton.styleFrom(backgroundColor: Colors.grey[300]),
          icon: const Icon(Icons.filter_alt_off_rounded),
        ),
        IconButton.filled(
          iconSize: 20,
          color: Colors.black54,
          style: IconButton.styleFrom(backgroundColor: Colors.grey[300]),
          onPressed: () {
            ref.read(isFilterVisible.notifier).state = false;
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.close),
        ),
      ],
    );
  }

  void _onFormSelected(PokemonForm? form) {
    selectedForm = form;
    ref
        .read(pokemon3dModelListNotifierProvider.notifier)
        .applyFilter(gen: selectedGen, form: selectedForm!);
  }

  void _onGenSelected(PokemonGen? value) {
    selectedGen = value;

    if (value != null) {
      log.i(value.toString());
      ref
          .read(pokemon3dModelListNotifierProvider.notifier)
          .applyFilter(gen: value, form: selectedForm!);
    }
  }

  void _clearFilter() {
    _genController.text = 'All Gen';
    _formController.text = 'All Forms';
    selectedForm = PokemonForm.allforms;
    selectedGen = PokemonGen.gen0;
    ref.read(pokemon3dModelListNotifierProvider.notifier).clearFilter();
  }

  List<DropdownMenuEntry<PokemonGen>> _createGenEntries() {
    return PokemonGen.values
        .map(
          (gen) => DropdownMenuEntry<PokemonGen>(value: gen, label: gen.label),
        )
        .toList();
  }

  List<DropdownMenuEntry<PokemonForm>> _createFormEntries() {
    return PokemonForm.values
        .map(
          (form) =>
              DropdownMenuEntry<PokemonForm>(value: form, label: form.label),
        )
        .toList();
  }
}
