import 'package:flutter/material.dart';
import 'package:trip_app/app/widgets/app_text.dart';

class AppSettingsOption extends StatelessWidget {
  String optionTitle;
  String assetImagePath;
  bool isSelectedOption;
  double buttonWidthSize;
  double buttonHeightSize;
  double iconWidthSize;
  double iconHeightSize;
  Function onSelectedOption;

  AppSettingsOption(
      {required this.optionTitle,
      required this.assetImagePath,
      this.isSelectedOption = false,
      required this.buttonWidthSize,
      required this.buttonHeightSize,
      required this.iconWidthSize,
      required this.iconHeightSize,
      required this.onSelectedOption});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonHeightSize,
      width: buttonWidthSize,
      child: ElevatedButton(
          onPressed: () {
            onSelectedOption();
          },
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(isSelectedOption
                ? Theme.of(context).colorScheme.secondaryVariant
                : Colors.transparent),
            elevation: MaterialStateProperty.all<double>(0),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                side: BorderSide(
                    color: isSelectedOption
                        ? Colors.white
                        : Colors.grey.withOpacity(0.4)),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(
                text: optionTitle,
                fontSize: 14,
                fontColor: Theme.of(context).colorScheme.onSurface,
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: iconHeightSize,
                width: iconWidthSize,
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
