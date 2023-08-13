import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF003C2C),
        child: Center(
          child: Container(
            height: 387,
            width: 388,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image_files/Group 1289 (3).png"),
                fit: BoxFit.cover
              )
            ),
          ),
        )
      ),
    );
  }
}
