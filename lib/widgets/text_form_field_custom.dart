import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldCustom extends TextFormField {
  static final borderStyle = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  );
  // static final borderStyle = OutlineInputBorder(
  //   borderRadius: BorderRadius.circular(8),
  //   borderSide: const BorderSide(color: ColorsApp.primaryColor),
  // );
  TextFormFieldCustom._({
    Key? key,
    bool autofocus = false,
    TextEditingController? controller,
    String? labelText,
    bool? enabled = true,
    FocusNode? focusNode,
    String? initialValue,
    List<TextInputFormatter>? inputFormatters,
    TextInputType keyboardType = TextInputType.text,
    int? maxLines = 1,
    bool obscureText = false,
    Function(String)? onChanged,
    Function(String)? onFieldSubmitted,
    FormFieldSetter<String>? onSaved,
    TextAlign textAlign = TextAlign.start,
    TextCapitalization textCapitalization = TextCapitalization.none,
    TextInputAction textInputAction = TextInputAction.next,
    String? Function(String?)? validator,
  }) : super(
          key: key,
          autofocus: autofocus,
          controller: controller,
          decoration: InputDecoration(
              errorBorder: borderStyle,
              focusedBorder: borderStyle,
              enabledBorder: borderStyle,
              disabledBorder: borderStyle,
              focusedErrorBorder: borderStyle,
              border: borderStyle,
              labelText: labelText),
          enabled: enabled,
          focusNode: focusNode,
          initialValue: initialValue,
          inputFormatters: inputFormatters,
          keyboardType: keyboardType,
          maxLines: obscureText ? 1 : maxLines,
          obscureText: obscureText,
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted,
          onSaved: onSaved,
          textAlign: textAlign,
          textCapitalization: textCapitalization,
          textInputAction: textInputAction,
          validator: validator,
        );

  factory TextFormFieldCustom.login({
    Key? key,
    String? initialValue,
    FormFieldSetter<String>? onSaved,
    FormFieldValidator<String>? validator,
    String? labelText,
    bool obscureText = false,
    bool? enabled,
    Function(String)? onFieldSubmitted,
  }) {
    return TextFormFieldCustom._(
      key: key,
      initialValue: initialValue,
      onSaved: onSaved,
      validator: validator,
      enabled: enabled,
      labelText: labelText,
      obscureText: obscureText,
      onFieldSubmitted: onFieldSubmitted,
    );
  }

  factory TextFormFieldCustom.enrollment(
      {Key? key,
      String? initialValue,
      FormFieldSetter<String>? onSaved,
      FormFieldValidator<String>? validator,
      bool? enabled,
      String? labelText = 'Nombre(s)',
      FocusNode? focusNode,
      TextEditingController? controller,
      TextInputType keyboardType = TextInputType.name,
      TextCapitalization textCapitalization = TextCapitalization.words,
      TextInputAction textInputAction = TextInputAction.next,
      Function(String)? onFieldSubmitted,
      bool autofocus = false,
      Function(String)? onChanged,
      List<TextInputFormatter>? inputFormatters}) {
    return TextFormFieldCustom._(
      key: key,
      initialValue: initialValue,
      onSaved: onSaved,
      validator: validator,
      enabled: enabled,
      labelText: labelText,
      focusNode: focusNode,
      controller: controller,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      textCapitalization: textCapitalization,
      textInputAction: textInputAction,
      onFieldSubmitted: onFieldSubmitted,
      autofocus: autofocus,
      onChanged: onChanged,
    );
  }
}
