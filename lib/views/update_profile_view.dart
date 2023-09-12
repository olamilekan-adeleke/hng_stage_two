import 'package:flutter/material.dart';

import '../shared/sizer_helper.dart';
import '../widgets/update_cv/components.dart';

class UpdateProfileView extends StatelessWidget {
  const UpdateProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: const Color(0xffFAF1E4),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizerHelper.verticalSpace(30),
            const Text(
              "Update Your CV",
              style: TextStyle(fontSize: 18, color: Colors.black87),
            ),
            SizerHelper.verticalSpace(3),
            const Text(
              "Re-enter your Cv details in the form below to edit and update your details",
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            SizerHelper.verticalSpace(40),
            const CustomTextField(
              title: "Full Name",
              hintText: "Enter Name",
            ),
          ],
        ),
      ),
    );
  }
}
