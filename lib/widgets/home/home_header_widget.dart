import 'package:flutter/material.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(),
        const Text(
          "Edit",
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
            decoration: TextDecoration.underline,
          ),
        ),
        // const Icon(Icons.edit, size: 18, color: Colors.white),
      ],
    );
  }
}
