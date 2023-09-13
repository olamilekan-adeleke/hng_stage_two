import 'package:flutter/material.dart';

import '../controller/app_state.dart';
import '../shared/sizer_helper.dart';
import '../widgets/home/home_about_widget.dart';
import '../widgets/home/home_profile_name_widget.dart';
import 'update_profile_view.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  final AppState appState = AppState();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) => appState.init());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: <Widget>[
              SizerHelper.verticalSpace(20),
              HomeProfileNameWidget(appState),
              SizerHelper.verticalSpace(25),
              HomeAboutWidget(appState),
              const Spacer(),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => UpdateProfileView(appState),
                    ));
                  },
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
              ),
              SizerHelper.verticalSpace(20),
            ],
          ),
        ),
      ),
    );
  }
}
