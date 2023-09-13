import 'package:flutter/material.dart';
import 'package:hng_stage_two/controller/app_state.dart';

import '../../controller/user_details_model.dart';
import '../../shared/sizer_helper.dart';

class HomeAboutWidget extends StatelessWidget {
  final AppState appState;
  const HomeAboutWidget(this.appState, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        StreamBuilder<UserDetailsModel>(
          stream: appState.dataStream,
          builder: (context, snapshot) {
            final UserDetailsModel? data = snapshot.data;

            return buildInfoWidget("About", data?.about ?? "");
          },
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
}
