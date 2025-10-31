import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_3d/core/constants.dart';
import 'package:pokedex_3d/core/logger.dart';
import 'package:pokedex_3d/ui/providers/pokemon_3d_model_list_notifier.dart';

class FilterSection extends ConsumerStatefulWidget {
  const FilterSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _FilterSectionState();
  }
}

class _FilterSectionState extends ConsumerState {
  late String? selectedForm = "All Forms";
  late int? selectedGen = 0;
  late final TextEditingController _genController;
  late final TextEditingController _formController;
  @override
  void initState() {
    super.initState();
    _genController = TextEditingController();
    _formController = TextEditingController();
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
        CustomDropdownMenu<int>(
          label: "Gen",
          controller: _genController,
          dropdownMenuEntries: List.generate(
            10,
            (index) => DropdownMenuEntry(
              value: index,
              label: index == 0 ? "All Gen" : 'Gen $index',
            ),
          ),
          onSelected: (value) {
            selectedGen = value;
            log.i("Gen $value selected $selectedGen");
            if (value != null) {
              log.i(value.toString());
              ref
                  .read(pokemon3dModelListNotifierProider.notifier)
                  .applyFilter(gen: value, form: selectedForm!.toLowerCase());
            }
          },
        ),
        CustomDropdownMenu<String>(
          label: "Forms",
          controller: _formController,
          onSelected: (form) {
            selectedForm = form;
            ref
                .read(pokemon3dModelListNotifierProider.notifier)
                .applyFilter(
                  gen: selectedGen,
                  form: selectedForm!.toLowerCase(),
                );
          },
          dropdownMenuEntries: PokemonForm.values
              .map(
                (form) =>
                    DropdownMenuEntry(value: form.name, label: form.label),
              )
              .toList(),
        ),
        IconButton.filled(
          onPressed: () {
            _genController.text = 'All Gen';
            _formController.text = 'All Forms';
            selectedForm = 'All Forms';
            selectedGen = 0;
            ref.read(pokemon3dModelListNotifierProider.notifier).clearFilter();
          },
          iconSize: 20,
          color: Colors.black54,
          style: IconButton.styleFrom(backgroundColor: Colors.grey[300]),
          icon: const Icon(Icons.filter_alt_off_rounded),
        ),
      ],
    );
  }
}

class CustomDropdownMenu<T> extends StatelessWidget {
  final void Function(T?) onSelected;
  final String label;
  final List<DropdownMenuEntry<T>> dropdownMenuEntries;
  final TextEditingController controller;

  const CustomDropdownMenu({
    super.key,
    required this.label,
    required this.dropdownMenuEntries,
    required this.onSelected,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<T>(
      width: 150,
      onSelected: onSelected,
      controller: controller,
      dropdownMenuEntries: dropdownMenuEntries,

      label: Text(
        label,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        constraints: const BoxConstraints(maxHeight: 36, maxWidth: 150),
        filled: true,
        fillColor: Colors.grey[300],

        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
        ), // Reduce right padding
        isDense: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide.none,
        ),
      ),

      menuStyle: MenuStyle(
        maximumSize: WidgetStatePropertyAll(Size(150, double.maxFinite)),
      ),
      textAlign: TextAlign.start,

      textStyle: const TextStyle(
        color: Colors.black,
        fontSize: 13,
        fontWeight: FontWeight.w500,
      ),
      showTrailingIcon: true,
      trailingIcon: Icon(
        Icons.arrow_drop_down,
        size: 20, // change this to resize icon
        color: Colors.grey[700],
      ),
      selectedTrailingIcon: Icon(
        Icons.arrow_drop_up,
        size: 20, // change this to resize icon
        color: Colors.grey[700],
      ),
    );
  }
}
