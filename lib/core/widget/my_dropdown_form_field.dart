import 'package:expenditure_app/constants/theme/color.dart';
import 'package:expenditure_app/constants/theme/shadow.dart';
import 'package:expenditure_app/constants/theme/text_theme.dart';
import 'package:flutter/material.dart';

class MyDropDownFormField extends StatelessWidget {
  const MyDropDownFormField(
      {super.key, this.items, required this.label, this.onChanged});
  final List<DropdownMenuItem<String>>? items;
  final String label;
  final void Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    String? selectedOption;
    return Container(
      decoration: BoxDecoration(
          boxShadow: [AppShadow.textFieldShadow],
          borderRadius: const BorderRadius.all(Radius.circular(50))),
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
      child: DropdownButtonFormField(
        dropdownColor: AppColor.indigo200,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          label:
              AppTextTheme.small(label, fontWeight: FontWeight.w500, context),
          filled: true,
          fillColor: Colors.indigo.shade100,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide.none),
        ),
        items: items,
        value: selectedOption,
        onChanged: onChanged,
      ),
    );
  }
}
