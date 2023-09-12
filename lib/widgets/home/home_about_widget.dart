import 'package:flutter/material.dart';

import '../../shared/sizer_helper.dart';

class HomeAboutWidget extends StatelessWidget {
  const HomeAboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        buildInfoWidget(
          "About",
          "I am a highly experienced Flutter developer with few years of professional experience in the field.  I am also well-versed in various state management techniques in Flutter such as GetX, BLoC, Provider, and Riverpod, and have experience working with external APIs and SDKs",
        ),
      ],
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
        SizerHelper.verticalSpace(),
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

  // Widget buildInfoWidget(String title, String value) {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: <Widget>[
  //       Text(
  //         title,
  //         style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
  //       ),
  //       Text(
  //         value,
  //         style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
  //       ),
  //     ],
  //   );
  // }
}
