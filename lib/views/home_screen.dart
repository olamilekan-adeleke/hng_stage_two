import 'package:flutter/material.dart';

import '../shared/sizer_helper.dart';
import '../widgets/home/home_about_widget.dart';
import '../widgets/home/home_header_widget.dart';
import '../widgets/home/home_profile_name_widget.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffCEDEBD),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: <Widget>[
              const HomeHeaderWidget(),
              SizerHelper.verticalSpace(),
              const HomeProfileNameWidget(),
              SizerHelper.verticalSpace(25),
              const HomeAboutWidget(),
              const Spacer(),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black87,
                  elevation: 0,
                  minimumSize: const Size(350, 36),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2)),
                  ),
                  backgroundColor: const Color(0xffFAF1E4),
                ),
                child: const Text("Edit Details"),
              ),
              SizerHelper.verticalSpace(20),
            ],
          ),
        ),
      ),
    );
  }
}
