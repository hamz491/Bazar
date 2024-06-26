import 'package:flutter/material.dart';

class Custom_TextField extends StatelessWidget {
  const Custom_TextField({
    super.key,
    required this.hinttxt,
    this.icon,
    this.Suffix,
    required this.prefixcolor,
    this.onfieldsubmitted,
    this.initialValue,
    required this.enabled,
    this.validator,
    this.onChanged,
  });
  final bool enabled;
  final String? initialValue;
  final String hinttxt;
  final IconData? icon;
  final Widget? Suffix;
  final Color prefixcolor;
  final void Function(String)? onfieldsubmitted;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      initialValue: initialValue,
      onFieldSubmitted: onfieldsubmitted,
      textInputAction: TextInputAction.search,
      validator: validator,
      onChanged: onChanged,
      //>>>>>>>>>>>>>>>>>>>>>>
      decoration: InputDecoration(
        suffixIcon: Suffix,
        prefixIcon: Icon(
          icon,
          color: prefixcolor,
          size: 27,
        ),
        //>>>>>>>>>>>>>>>>>>>>>>
        hintText: hinttxt,
        hintStyle: TextStyle(
          color: Colors.deepPurple.shade100,
        ),
        //>>>>>>>>>>>>>>>>>>>>>>
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          borderSide: BorderSide(
            color: Colors.grey.shade400,
          ),
        ),
      ),
    );
  }
}
