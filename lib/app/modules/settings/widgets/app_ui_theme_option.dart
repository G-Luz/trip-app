import 'package:flutter/material.dart';
import 'package:trip_app/app/widgets/app_text.dart';

class AppUIThemeOption extends StatelessWidget {
  String themeTitle;
  String assetImagePath;
  bool isSelectedTheme;
  Function onSelectedTheme;

  AppUIThemeOption(
      {required this.themeTitle,
      required this.assetImagePath,
      this.isSelectedTheme = false,
      required this.onSelectedTheme});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 90,
      child: ElevatedButton(
          onPressed: () {
            onSelectedTheme();
          },
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(isSelectedTheme
                ? Theme.of(context).colorScheme.secondaryVariant
                : Colors.transparent),
            elevation: MaterialStateProperty.all<double>(0),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                side: BorderSide(
                    color: isSelectedTheme
                        ? Colors.white
                        : Colors.grey.withOpacity(0.4)),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(text: themeTitle, fontSize: 14,),
              const SizedBox(height: 20),
              SizedBox(
                height: 80,
                width: 70,
                child: Image.asset(
                  assetImagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          )),
    );
  }
}
