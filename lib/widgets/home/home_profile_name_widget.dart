import 'package:flutter/material.dart';

import '../../shared/sizer_helper.dart';

class HomeProfileNameWidget extends StatelessWidget {
  const HomeProfileNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/user.jpeg",
                fit: BoxFit.fill,
                height: 80,
                width: 80,
              ),
            ),
            SizerHelper.horizontalSpace(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Olamilekan Adeleke",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Text(
                  "@Kod_Enigma",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ],
        ),
        SizerHelper.verticalSpace(30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizerHelper.horizontalSpace(double.infinity),
            buildInfoWidget("Slack Username", "Kod-Enigma"),
            SizerHelper.verticalSpace(),
            buildInfoWidget("Github handle", "Olamilekan-adeleke"),
          ],
        ),
        SizerHelper.verticalSpace(),
      ],
    );
  }

  Widget buildInfoWidget(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
        ),
        Text(
          value,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
