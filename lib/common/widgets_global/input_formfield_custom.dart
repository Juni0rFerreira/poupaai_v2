import 'package:flutter/material.dart';

class TextFormFieldCustom extends StatefulWidget {
  final EdgeInsetsGeometry? padding;
  final String? hintText;
  final String? labelText;
  final TextCapitalization? textCapitalization;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  const TextFormFieldCustom({
    super.key,
    this.padding,
    this.hintText,
    this.labelText,
    this.textCapitalization,
    this.keyboardType,
    this.textInputAction,
  });

  @override
  State<TextFormFieldCustom> createState() => _TextFormFieldCustomState();
}

class _TextFormFieldCustomState extends State<TextFormFieldCustom> {
  final defaultBorder = const OutlineInputBorder(
    borderSide: BorderSide(
      color: Color(0xFF00A9FF),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ??
          const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 12,
          ),
      child: TextFormField(
        textInputAction: widget.textInputAction ?? TextInputAction.next,
        keyboardType: widget.keyboardType,
        textCapitalization:
            widget.textCapitalization ?? TextCapitalization.none,
        decoration: InputDecoration(
            hintText: widget.hintText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: widget.labelText?.toUpperCase(),
            labelStyle: const TextStyle(
              fontSize: 14,
              color: Color(0xFF666666),
              fontWeight: FontWeight.w400,
            ),
            focusedBorder: defaultBorder,
            errorBorder: defaultBorder.copyWith(
              borderSide: const BorderSide(color: Colors.red),
            ),
            focusedErrorBorder: defaultBorder.copyWith(
              borderSide: const BorderSide(color: Colors.red),
            ),
            enabledBorder: defaultBorder,
            disabledBorder: defaultBorder),
      ),
    );
  }
}
