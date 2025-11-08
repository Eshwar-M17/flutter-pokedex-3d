import 'package:flutter/material.dart';

class CustomDropdownMenu<T> extends StatelessWidget {
  final void Function(T?) onSelected;
  final String label;
  final List<DropdownMenuEntry<T>> dropdownMenuEntries;
  final TextEditingController controller;
  final double width;

  const CustomDropdownMenu({
    super.key,
    required this.label,
    required this.dropdownMenuEntries,
    required this.onSelected,
    required this.controller,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<T>(
      width: width,
      onSelected: onSelected,
      controller: controller,
      dropdownMenuEntries: dropdownMenuEntries,
      inputDecorationTheme: Theme.of(context)
          .dropdownMenuTheme
          .inputDecorationTheme!
          .copyWith(fillColor: Theme.of(context).canvasColor.withAlpha(200)),

      label: Text(label),

      textAlign: TextAlign.start,

      showTrailingIcon: true,
      trailingIcon: Icon(
        Icons.arrow_drop_down,
        size: 20, // change this to resize icon
        // color: Colors.grey[700],
      ),
      selectedTrailingIcon: Icon(
        Icons.arrow_drop_up,
        size: 20, // change this to resize icon
        // color: Colors.grey[700],
      ),
    );
  }
}
