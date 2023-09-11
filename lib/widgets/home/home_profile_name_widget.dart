import 'package:flutter/material.dart';

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
      ],
    );
  }
}
