import 'package:flutter/material.dart';

class Leading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: InkWell(
        onTap: () {},
        hoverColor: Colors.white,
        child: CircleAvatar(
            radius: 10,
            backgroundColor: Colors.red,
            backgroundImage: AssetImage("assets/images/logo.png")),
      ),
    );
  }
}
