import 'package:flutter/material.dart';

class SelectionChip extends StatefulWidget {
  final List<String> chips;
  final Function(String) onSizeSelected;

  const SelectionChip(
      {super.key, required this.chips, required this.onSizeSelected});

  @override
  SizeSelectionChipState createState() => SizeSelectionChipState();
}

class SizeSelectionChipState extends State<SelectionChip> {
  String? _selectedSize;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      children: widget.chips
          .map(
            (size) => ChoiceChip(
              labelStyle: const TextStyle(fontSize: 11),
              padding: const EdgeInsets.all(0),
              label: Text(size),
              selected: _selectedSize == size,
              onSelected: (selected) {
                setState(() {
                  _selectedSize = selected ? size : null;
                  //   widget.onSizeSelected(_selectedSize!);
                });
              },
            ),
          )
          .toList(),
    );
  }
}
