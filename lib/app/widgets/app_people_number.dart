import 'package:flutter/material.dart';
import 'package:trip_app/app/constants/style/app_colors.dart';
import 'package:trip_app/app/widgets/app_text.dart';

class AppPeopleNumber extends StatelessWidget {
  Function selectedPeopleCallback;
  int selectedIndex;

  AppPeopleNumber(
      {required this.selectedPeopleCallback, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          text: 'Pessoas',
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(height: 2),
        AppText(
          text: 'Quantidade de pessoas para a viagem',
          fontSize: 14,
          fontColor: AppColors.opacityWhite,
        ),
        const SizedBox(height: 10),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: buildPeopleNumberButton(
                context, selectedPeopleCallback, selectedIndex),
          ),
        )
      ],
    );
  }

  List<Widget> buildPeopleNumberButton(BuildContext context,
      Function selectedPeopleCallback, int selectedIndex) {
    List<Widget> buttons = [];

    for (int i = 1; i < 5; i++) {
      buttons.add(
        Container(
          height: 50,
          width: 50,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          child: ElevatedButton(
            onPressed: () {
              selectedPeopleCallback(i);
            },
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                      side: BorderSide(color: AppColors.opacityWhite)),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                    selectedIndex == i
                        ? Theme.of(context).colorScheme.primary
                        : Colors.transparent)),
            child: Center(
              child: AppText(
                text: '${i}',
                fontSize: 14,
              ),
            ),
          ),
        ),
      );
    }

    buttons.add(
      Container(
        height: 50,
        width: 50,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        child: ElevatedButton(
          onPressed: () {
            selectedPeopleCallback(5);
          },
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                  side: BorderSide(color: AppColors.opacityWhite)),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(selectedIndex == 5
                ? Theme.of(context).colorScheme.primary
                : Colors.transparent),
          ),
          child: Center(
            child: AppText(
              text: '5+',
              fontSize: 14,
            ),
          ),
        ),
      ),
    );

    return buttons;
  }
}
