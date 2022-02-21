import 'package:flutter/material.dart';
import 'package:trip_app/app/constants/style/app_colors.dart';
import 'package:trip_app/app/widgets/app_text.dart';

class AppDrawerListSettingOptions extends StatelessWidget {
  IconData icon;
  String title;
  String subTitle;
  Function onPressedCallback;

  AppDrawerListSettingOptions(
      {required this.icon,
      required this.title,
      required this.subTitle,
      required this.onPressedCallback});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: 2),
      child: ElevatedButton(
          onPressed: () {
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText(
                      text: title.toUpperCase(),
                      fontColor: AppColors.opacityWhite,
                      fontSize: 13,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      child: AppText(
                        text: subTitle,
                        fontSize: 11,
                        fontColor: AppColors.lightTeal,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
