import 'package:flutter/material.dart';
import 'package:trip_app/app/widgets/app_divider.dart';
import 'package:trip_app/app/widgets/app_rating.dart';
import 'package:trip_app/app/widgets/app_text.dart';

class AppReviewSection extends StatelessWidget {
  const AppReviewSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          // decoration: BoxDecoration(color: Colors.deepPurple),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.2),
              ),
              const SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppRating(rating: 3, iconSize: 20),
                  AppText(
                    //20 char
                    text: 'Atendimento ruim',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  Flexible(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      //100 char
                      child: AppText(text: 'Lugar muito bom, porém com um atendimento ruim'),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        AppDivider(height: 0.1, barColor: Colors.teal,),
      ],
    );
  }
}
