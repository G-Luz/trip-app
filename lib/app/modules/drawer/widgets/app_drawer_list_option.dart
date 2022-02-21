import 'package:flutter/material.dart';
import 'package:trip_app/app/constants/style/app_colors.dart';
import 'package:trip_app/app/widgets/app_text.dart';

class AppDrawerListOption extends StatelessWidget {
  IconData icon;
  String text;
  Function onPressedCallback;
  bool disabled;

  AppDrawerListOption(
      {required this.icon,
      required this.text,
      required this.onPressedCallback,
      this.disabled = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
          onPressed: disabled
              ? null
              : () {
                  onPressedCallback();
                },
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(
                Theme.of(context).colorScheme.secondaryVariant),
            elevation: MaterialStateProperty.all<double>(0),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 20,
                color: Colors.white,
              ),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: AppText(
                    text: text,
                    fontColor: Colors.white,
                  ))
            ],
          )),
    );
  }
}
