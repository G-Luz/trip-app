import 'package:flutter/material.dart';
import 'package:trip_app/app/constants/style/app_colors.dart';
import 'package:trip_app/app/widgets/app_rating.dart';
import 'package:trip_app/app/widgets/app_text.dart';

class AppSectionTitle extends StatelessWidget {

  int sectionIndex;


  AppSectionTitle({required this.sectionIndex});

  List<Widget> headersTitle = [
    Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 5),
          AppText(
            text: 'Place name',
            fontSize: 22,
            fontColor: AppColors.opacityWhite,
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(right: 5),
                  child: const Icon(
                    Icons.place,
                    size: 15,
                  )),
              AppText(
                text: 'Place locale',
                fontSize: 15,
              ),
            ],
          ),
          const SizedBox(height: 10),
          AppRating(
            iconSize: 20,
            rating: 4,
          ),
        ],
      ),
    ),
    Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 5),
          AppText(
            text: 'Detalhes da viagem',
            fontSize: 22,
            fontColor: AppColors.opacityWhite,
          ),
          const SizedBox(height: 5),
          AppText(
            text: 'Duration - 5 days',
            fontSize: 15,
          ),
          const SizedBox(height: 10),
        ],
      ),
    ),
    Container(
        margin: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5),
            AppText(
              text: 'Avaliações',
              fontSize: 22,
              fontColor: AppColors.opacityWhite,
            ),
            const SizedBox(height: 5),
            AppText(
              text: 'Media entre X opiniões',
              fontSize: 15,
            ),
            AppRating(rating: 4, iconSize: 20),
            const SizedBox(height: 10),
          ],
        )),
  ];

  @override
  Widget build(BuildContext context) {
    return headersTitle[sectionIndex];
  }
}
