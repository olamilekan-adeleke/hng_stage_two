import 'package:flutter/material.dart';
import 'package:hng_stage_two/controller/app_state.dart';
import 'package:hng_stage_two/controller/user_details_model.dart';

import '../../shared/sizer_helper.dart';

class HomeProfileNameWidget extends StatelessWidget {
  final AppState appState;
  const HomeProfileNameWidget(this.appState, {super.key});

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
                height: 60,
                width: 60,
              ),
            ),
            SizerHelper.horizontalSpace(),
            StreamBuilder<UserDetailsModel>(
              stream: appState.dataStream,
              builder: (context, snapshot) {
                final UserDetailsModel? data = snapshot.data;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data?.fullname ?? "N/A",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      data?.username ?? "N/A",
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
        SizerHelper.verticalSpace(30),
        StreamBuilder<UserDetailsModel>(
            stream: appState.dataStream,
            builder: (context, snapshot) {
              final UserDetailsModel? data = snapshot.data;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizerHelper.horizontalSpace(double.infinity),
                  buildInfoWidget(
                    "Slack Username",
                    data?.slackUsername ?? "N/A",
                  ),
                  SizerHelper.verticalSpace(),
                  buildInfoWidget(
                    "Github handle",
                    data?.githubUsername ?? "N/a",
                  ),
                ],
              );
            }),
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
