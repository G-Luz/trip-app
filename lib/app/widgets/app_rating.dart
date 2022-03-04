import 'package:flutter/material.dart';
import 'package:trip_app/app/constants/style/app_colors.dart';
import 'package:trip_app/app/widgets/app_text.dart';

class AppRating extends StatelessWidget {
  // const AppRating({Key? key}) : super(key: key);

  int rating = 3;
  double iconSize = 25;

  AppRating({required this.rating, required this.iconSize});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('open ratings');
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: buildRatingWidget(rating),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: AppText(
                text: '(255)',
                fontSize: 7,
                fontColor: Theme.of(context).colorScheme.onSurface,
              ))
        ],
      ),
    );
  }

  List<Widget> buildRatingWidget(int rating) {
    List<Widget> ratings = [];

    for (int i = 0; i < rating; i++) {
      ratings.add(Icon(
        Icons.star,
        size: iconSize,
        color: AppColors.rating,
      ));
    }

    if (ratings.length < 5) {
      for (int i = ratings.length; i < 5; i++) {
        ratings.add(Icon(
          Icons.star_border,
          size: iconSize,
          color: AppColors.rating,
        ));
      }
    }

    return ratings;
  }
}
