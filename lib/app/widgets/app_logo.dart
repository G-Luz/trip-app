import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trip_app/app/widgets/app_text.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/ic_login_logo.png"))),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: AppText(
            text: "Travel",
            fontFamily: 'Astral',
            fontSize: 50,
            fontColor: Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
