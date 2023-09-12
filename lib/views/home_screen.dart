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
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: <Widget>[
              const HomeHeaderWidget(),
              SizerHelper.verticalSpace(),
              const HomeProfileNameWidget(),
              SizerHelper.verticalSpace(),
              const HomeAboutWidget(),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
