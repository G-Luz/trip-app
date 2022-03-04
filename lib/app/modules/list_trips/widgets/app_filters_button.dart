import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:trip_app/app/widgets/app_text.dart';

class AppFiltersButton extends StatelessWidget {
  //todo: try make scroll effect
  String selectedTitle;
  int selectedIndex;
  Function selectedFilterCallback;

  AppFiltersButton(
      {required this.selectedTitle,
      required this.selectedIndex,
      required this.selectedFilterCallback});

  List<String> filterTitle = [
    'filters_title.favorite'.tr(),
    'filters_title.romantic'.tr(),
    'filters_title.cultural'.tr(),
    'filters_title.relaxing'.tr(),
    'filters_title.spiritual'.tr(),
    'filters_title.best_places'.tr()
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: filterTitle.length,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            width: 100,
            margin: EdgeInsets.symmetric(horizontal: 3),
            child: ElevatedButton(
              onPressed: () {
                selectedFilterCallback(index);
              },
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context).colorScheme.secondaryVariant),
                elevation: MaterialStateProperty.all<double>(0),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    EdgeInsets.zero),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 40),
                          child: Icon(
                            Icons.favorite_border_outlined,
                            size: 30,
                          )),
                      const SizedBox(height: 10),
                      Container(
                        width: 75,
                        alignment: Alignment.center,
                        child: AppText(
                          text: filterTitle[index],
                          fontWeight: FontWeight.bold,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 5,
                    decoration: BoxDecoration(
                        color: this.selectedIndex == index
                            ? Colors.teal
                            : Colors.transparent,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5))),
                  )
                ],
              ),
            ),
          );
        });
  }
}
