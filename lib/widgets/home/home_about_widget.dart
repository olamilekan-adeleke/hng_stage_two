import 'package:flutter/material.dart';
import 'package:hng_stage_two/shared/sizer_helper.dart';

class HomeAboutWidget extends StatelessWidget {
  const HomeAboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color(0xffFAF1E4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          buildInfoWidget(
            "About Me",
            "I am a highly experienced Flutter developer with few years of professional experience in the field.  I am also well-versed in various state management techniques in Flutter such as GetX, BLoC, Provider, and Riverpod, and have experience working with external APIs and SDKs",
          ),
        ],
      ),
    );
  }

  Widget buildInfoWidget(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black.withOpacity(0.8),
          ),
        ),
        SizerHelper.verticalSpace(5),
        Text(
          value,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            color: Colors.black.withOpacity(0.7),
          ),
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}
