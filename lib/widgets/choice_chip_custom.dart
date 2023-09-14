import 'package:flutter/material.dart';
import 'package:school_app_toolkit/school_app_toolkit.dart';

class ChoiceChipCustom<T> extends FormField<T> {
  final List<T> items;
  final Function(bool, T?)? onChanged;
  final T? value;

  ChoiceChipCustom({
    Key? key,
    required this.items,
    this.value,
    FormFieldSetter<T>? onSaved,
    FormFieldValidator<T>? validator,
    this.onChanged,
    bool autovalidateMode = false,
  }) : super(
          key: key,
          initialValue: value,
          onSaved: onSaved,
          validator: validator,
          autovalidateMode: autovalidateMode
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          builder: (FormFieldState<T> state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Wrap(
                    spacing: MarginsApp.marginRegular,
                    children: items.map(
                      (item) {
                        return ChoiceChip(
                          label: Text(
                            item.toString(),
                            textScaleFactor: 1,
                          ),
                          selected: value == item,
                          onSelected: onChanged == null
                              ? null
                              : (selected) {
                                  if (selected) {
                                    if (value == item) {
                                      onChanged(selected, null);
                                    } else {
                                      onChanged(selected, item);
                                    }
                                  }
                                  state.didChange(value);

                                  state.validate();
                                },
                        );
                      },
                    ).toList(),
                  ),
                ),
                if (state.hasError)
                  Builder(builder: (context) {
                    final ThemeData themeData = Theme.of(context);
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(state.errorText!,
                          textScaleFactor: 1,
                          style: themeData.textTheme.bodySmall!
                              .copyWith(color: themeData.colorScheme.error)),
                    );
                  })
              ],
            );
          },
        );
}
