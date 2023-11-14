import 'package:flutter/material.dart';

class PasswordFormFieldCustom extends StatefulWidget {
  final EdgeInsetsGeometry? padding;
  final String? hintText;
  final String? labelText;
  final TextCapitalization? textCapitalization;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool? obscureText;
  const PasswordFormFieldCustom({
    super.key,
    this.padding,
    this.hintText,
    this.labelText,
    this.textCapitalization,
    this.keyboardType,
    this.textInputAction,
    this.obscureText,
  });

  @override
  State<PasswordFormFieldCustom> createState() =>
      _PasswordFormFieldCustomState();
}

class _PasswordFormFieldCustomState extends State<PasswordFormFieldCustom> {
  final defaultBorder = const OutlineInputBorder(
    borderSide: BorderSide(
      color: Color(0xFF429690),
    ),
  );

  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ??
          const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 12,
          ),
      child: TextFormField(
        obscureText: isHidden,
        textInputAction: widget.textInputAction ?? TextInputAction.next,
        keyboardType: widget.keyboardType,
        textCapitalization:
            widget.textCapitalization ?? TextCapitalization.none,
        decoration: InputDecoration(
            suffixIcon: InkWell(
              borderRadius: BorderRadius.circular(24),
              onTap: () {
                setState(() {
                  isHidden = !isHidden;
                });
              },
              child: Icon(isHidden ? Icons.visibility_off
                 : Icons.visibility
              , color: const Color(0xFF429690),),
            ),
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
