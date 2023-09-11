import 'package:flutter/material.dart';

import '../widgets/home/home_header_widget.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: const <Widget>[
              HomeHeaderWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
