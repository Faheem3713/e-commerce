import 'dart:math';

import 'package:flutter/material.dart';

class SelectionChip extends StatefulWidget {
  final List chips;
  final Function(dynamic) onSizeSelected;

  const SelectionChip(
      {super.key, required this.chips, required this.onSizeSelected});

  @override
  SizeSelectionChipState createState() => SizeSelectionChipState();
}

class SizeSelectionChipState extends State<SelectionChip> {
  dynamic _selectedSize;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      children: widget.chips
          .map(
            (size) => ChoiceChip(
              labelStyle: const TextStyle(fontSize: 11),
              padding: const EdgeInsets.all(0),
              label: Text(size.toString()),
              selected: _selectedSize == size.toString(),
              onSelected: (selected) {
                setState(() {
                  _selectedSize = selected ? size.toString() : null;
                  widget.onSizeSelected(_selectedSize);
                });
              },
            ),
          )
          .toList(),
    );
  }
}
