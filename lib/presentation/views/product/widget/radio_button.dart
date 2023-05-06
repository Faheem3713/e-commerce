import 'package:flutter/material.dart';

enum SortType {
  lowToHigh,
  highToLow,
}

ValueNotifier<SortType> selectedSortType = ValueNotifier(SortType.highToLow);

class RadioButton extends StatelessWidget {
  const RadioButton({super.key, required this.text, required this.type});
  final String text;
  final SortType type;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ValueListenableBuilder(
            valueListenable: selectedSortType,
            builder: (context, radioType, _) {
              return Radio<SortType>(
                value: type,
                groupValue: radioType,
                onChanged: (value) {
                  selectedSortType.value = value!;
                },
              );
            }),
        Text(text)
      ],
    );
  }
}
