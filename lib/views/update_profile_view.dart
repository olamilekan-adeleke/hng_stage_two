// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:hng_stage_two/controller/app_state.dart';

import '../shared/sizer_helper.dart';
import '../widgets/update_cv/components.dart';

class UpdateProfileView extends StatefulWidget {
  final AppState appState;
  const UpdateProfileView(this.appState, {super.key});

  @override
  State<UpdateProfileView> createState() => _UpdateProfileViewState();
}

class _UpdateProfileViewState extends State<UpdateProfileView> {
  final fullnameController = TextEditingController();
  final usernameController = TextEditingController();
  final slackUsernameController = TextEditingController();
  final githubUsernameController = TextEditingController();
  final aboutController = TextEditingController();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      //
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Update Your CV",
          style: TextStyle(fontSize: 18, color: Colors.black87),
        ),
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizerHelper.verticalSpace(),
              const Text(
                "Re-enter your Cv details in the form below to edit and update your details",
                style: TextStyle(fontSize: 14, color: Colors.black54),
                textAlign: TextAlign.center,
              ),
              SizerHelper.verticalSpace(40),
              CustomTextField(
                title: "Fullname",
                hintText: "Enter Name",
                validator: (_) {},
              ),
              SizerHelper.verticalSpace(20),
              CustomTextField(
                title: "Username",
                hintText: "Enter username",
                validator: (_) {},
              ),
              SizerHelper.verticalSpace(20),
              CustomTextField(
                title: "Slack Username",
                hintText: "Enter your slack username",
                validator: (_) {},
              ),
              SizerHelper.verticalSpace(20),
              CustomTextField(
                title: "Github Handle",
                hintText: "Enter your github username",
                validator: (_) {},
              ),
              SizerHelper.verticalSpace(20),
              CustomTextField(
                title: "About",
                hintText: "Enter About",
                maxLine: 3,
                validator: (_) {},
              ),
              SizerHelper.verticalSpace(40),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) =>  UpdateProfileView(),
                    // ));
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
                  child: const Text("Save"),
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
