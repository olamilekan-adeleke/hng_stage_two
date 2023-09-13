import 'package:flutter/material.dart';
import 'package:hng_stage_two/shared/sizer_helper.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final String hintText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final int? maxLine;

  const CustomTextField({
    super.key,
    required this.title,
    required this.hintText,
    this.validator,
    this.controller,
    this.maxLine,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black87,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizerHelper.verticalSpace(5),
        TextFormField(
          maxLines: maxLine,
          controller: controller,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 13,
          ),
          validator: validator,
          autovalidateMode:
              validator != null ? AutovalidateMode.onUserInteraction : null,
          decoration: InputDecoration(
            hintText: hintText,
            prefixStyle: const TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w600,
              fontSize: 13,
            ),
            errorMaxLines: 2,
            filled: true,
            fillColor: const Color(0xffFAF1E4).withOpacity(0.1),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xff435334)),
              borderRadius: BorderRadius.circular(5.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xff435334)),
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ],
    );
  }
}
