import 'package:flutter/material.dart';

class DropdownButtonFormFieldCustom<T> extends StatelessWidget {
  final List<T> items;
  final T? value;
  final String? labelText;
  final Function(T?)? onChanged;
  final FocusNode? focusNode;
  const DropdownButtonFormFieldCustom(
      {super.key,
      required this.items,
      required this.value,
      this.labelText,
      this.onChanged,
      this.focusNode});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      focusNode: focusNode,
      itemHeight: null,
      isDense: true,
      isExpanded: true,
      decoration: InputDecoration(
        labelText: labelText ?? 'Seleccione',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      value: value,
      items: items
          .map(
            (e) => DropdownMenuItem(
              value: e,
              child: Text(
                e.toString(),
                textScaleFactor: 1,
              ),
            ),
          )
          .toList(),
      onChanged: onChanged,
    );
  }
}
