import 'package:flutter/material.dart';
import 'package:trip_app/app/constants/style/app_colors.dart';
import 'package:trip_app/app/widgets/app_text.dart';

class AppSectionOptions extends StatelessWidget {
  Function selectedPeopleCallback;
  int selectedIndex;

  AppSectionOptions(
      {required this.selectedPeopleCallback, required this.selectedIndex});

  List<String> sectionOptionsTitle = ['Visão geral', 'Detalhes', 'Avaliações'];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:
            buildSectionOptions(context, selectedPeopleCallback, selectedIndex),
      ),
    );
  }

  List<Widget> buildSectionOptions(BuildContext context,
      Function selectedPeopleCallback, int selectedIndex) {
    List<Widget> options = [];

    for (int i = 0; i < 3; i++) {
      options.add(
        GestureDetector(
          onTap: () {
            selectedPeopleCallback(i);
          },
          child: Container(
            height: 30,
            // color: Colors.yellow,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                AppText(
                  text: sectionOptionsTitle[i],
                  fontColor: selectedIndex == i
                      ? Colors.teal
                      : Theme.of(context).colorScheme.onSurface,
                  fontSize: 12,
                ),
                selectedIndex == i
                    ? Container(
                        height: 5,
                        width: 5,
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        decoration: const BoxDecoration(
                            color: Colors.teal, shape: BoxShape.circle),
                      )
                    : Container()
              ],
            ),
          ),
        ),
      );
    }

    // for (int i = 1; i < 5; i++) {
    //   buttons.add(
    //     Container(
    //       height: 50,
    //       width: 50,
    //       margin: const EdgeInsets.symmetric(horizontal: 5),
    //       child: ElevatedButton(
    //         onPressed: () {
    //           selectedPeopleCallback(i);
    //         },
    //         style: ButtonStyle(
    //             shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    //               RoundedRectangleBorder(
    //                   borderRadius: BorderRadius.circular(7),
    //                   side: BorderSide(color: AppColors.opacityWhite)),
    //             ),
    //             backgroundColor: MaterialStateProperty.all<Color>(
    //                 selectedIndex == i
    //                     ? Theme.of(context).colorScheme.primary
    //                     : Colors.transparent)),
    //         child: Center(
    //           child: AppText(
    //             text: '${i}',
    //             fontSize: 14,
    //           ),
    //         ),
    //       ),
    //     ),
    //   );
    // }

    return options;
  }
}
