import 'package:flutter/material.dart';
import 'package:trip_app/app/widgets/app_divider.dart';
import 'package:trip_app/app/widgets/app_text.dart';

class AppAccountOption extends StatelessWidget {
  Function onPressedCallback;
  String option;
  String content;

  AppAccountOption(
      {required this.onPressedCallback,
      required this.option,
      required this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          splashColor: Colors.grey.withOpacity(0.05),
          onTap: () => {onPressedCallback()},
          child: Container(
            height: 65,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: AppText(
                    text: option,
                    fontColor: Theme.of(context).colorScheme.onSurface,
                    textAlign: TextAlign.left,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 160,
                      child: AppText(
                        text: content,
                        fontColor: Theme.of(context)
                            .colorScheme
                            .onSurface
                            .withOpacity(0.7),
                        fontSize: 14,
                        textAlign: TextAlign.right,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: const Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        AppDivider(
          barColor: Colors.grey.withOpacity(0.8),
          height: 0.3,
        ),
      ],
    );
  }
}
