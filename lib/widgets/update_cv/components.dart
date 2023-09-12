import 'package:flutter/material.dart';
import 'package:hng_stage_two/shared/sizer_helper.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final String hintText;
  final String? Function(String)? validator;

  const CustomTextField({
    super.key,
    required this.title,
    required this.hintText,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 16, color: Colors.black54),
        ),
        SizerHelper.verticalSpace(5),
        TextFormField(
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 13,
          ),
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
