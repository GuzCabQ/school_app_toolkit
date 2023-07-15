import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends TextFormField {
  CustomTextFormField._(
      {Key? key,
      FormFieldSetter<String>? onSaved,
      bool? enabled,
      InputDecoration? decoration,
      int? maxLines,
      int? minLines,
      String? Function(String?)? validator,
      String? initialValue,
      Function(String)? onChanged,
      Function(String)? onFieldSubmitted,
      TextAlign? textAlign,
      TextEditingController? controller,
      List<TextInputFormatter>? inputFormatters,
      TextInputType? keyboardType,
      FocusNode? focusNode,
      TextInputAction? textInputAction,
      String? labelText,
      bool obscureText = false})
      : super(
            key: key,
            initialValue: initialValue,
            onSaved: onSaved,
            validator: validator,
            enabled: enabled,
            decoration: decoration ?? InputDecoration(labelText: labelText),
            maxLines: obscureText ? 1 : maxLines,
            minLines: minLines,
            onChanged: onChanged,
            onFieldSubmitted: onFieldSubmitted,
            textAlign: textAlign ?? TextAlign.center,
            controller: controller,
            inputFormatters: inputFormatters,
            keyboardType: keyboardType,
            focusNode: focusNode,
            textInputAction: textInputAction,
            obscureText: obscureText);

  factory CustomTextFormField.login(
      {Key? key,
      String? initialValue,
      FormFieldSetter<String>? onSaved,
      FormFieldValidator<String>? validator,
      String? labelText,
      bool obscureText = false,
      bool? enabled}) {
    return CustomTextFormField._(
      key: key,
      initialValue: initialValue,
      obscureText: obscureText,
      onSaved: onSaved,
      validator: validator,
      enabled: enabled,
      decoration: InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(),
        fillColor: Colors.red,
        filled: true,
      ),
    );
  }
  factory CustomTextFormField.enrollment(
      {Key? key,
      String? initialValue,
      FormFieldSetter<String>? onSaved,
      FormFieldValidator<String>? validator,
      bool? enabled}) {
    return CustomTextFormField._(
      key: key,
      initialValue: initialValue,
      onSaved: onSaved,
      validator: validator,
      enabled: enabled,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        fillColor: Colors.blue,
        filled: true,
      ),
    );
  }
}
