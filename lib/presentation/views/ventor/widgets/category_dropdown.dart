import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({
    super.key,
    required this.brandValue,
    required this.brands,
    required this.text,
  });

  final ValueNotifier<String?> brandValue;
  final List<String> brands;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: brandValue,
        builder: (context, selectedBrandValue, _) {
          return Expanded(
            child: DropdownButton(
              isExpanded: true,
              value: selectedBrandValue,
              hint: Text(text),
              items: brands
                  .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      ))
                  .toList(),
              onChanged: (value) {
                brandValue.value = value;
              },
            ),
          );
        });
  }
}
