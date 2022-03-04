import 'package:flutter/material.dart';
import 'package:trip_app/app/widgets/app_text.dart';

class AppCategoryButton extends StatelessWidget {
  String buttonLabel;
  String buttonIconPath;
  Function onPressedCallback;

  AppCategoryButton(
      {required this.buttonLabel,
      required this.buttonIconPath,
      required this.onPressedCallback});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        // foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),

        elevation: MaterialStateProperty.all<double>(0),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          const RoundedRectangleBorder(
            // side: BorderSide(color: Colors.teal, width: 0.1),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        padding:
            MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: 40,
              height: 50,
              child: Image.asset(buttonIconPath)),
          AppText(
            text: buttonLabel,
            fontSize: 12,
            fontColor: Theme.of(context)
                .colorScheme
                .onSurface,
          )
        ],
      ),
    );
  }
}
