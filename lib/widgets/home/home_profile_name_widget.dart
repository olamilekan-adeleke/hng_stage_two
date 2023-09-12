import 'package:flutter/material.dart';

import '../../shared/sizer_helper.dart';

class HomeProfileNameWidget extends StatelessWidget {
  const HomeProfileNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(45),
          child: Image.asset(
            "assets/user.jpeg",
            fit: BoxFit.fill,
            height: 80,
            width: 80,
          ),
        ),
        SizerHelper.verticalSpace(),
        const Text(
          "@Kod_Enigma",
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
        ),
        const Text(
          "Olamilekan Adeleke",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        SizerHelper.verticalSpace(),
        const Divider(color: Colors.white54, thickness: 0.5),
        SizerHelper.verticalSpace(),
        Row(
          children: [
            buildInfoWidget("Slack Username", "Kod-Enigma"),
            buildInfoWidget(
              "Github handle",
              "olamilekan-adeleke",
              axis: CrossAxisAlignment.end,
            ),
          ],
        ),
        SizerHelper.verticalSpace(),
        const Divider(color: Colors.white54, thickness: 0.5),
        SizerHelper.verticalSpace(),
      ],
    );
  }

  Widget buildInfoWidget(
    String title,
    String value, {
    CrossAxisAlignment axis = CrossAxisAlignment.start,
  }) {
    return Expanded(
      child: Column(
        crossAxisAlignment: axis,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
