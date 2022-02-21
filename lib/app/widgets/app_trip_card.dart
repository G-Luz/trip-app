import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:trip_app/app/constants/style/app_colors.dart';
import 'package:trip_app/app/modules/place_details/place_details_page.dart';
import 'package:trip_app/app/routes.dart';
import 'package:trip_app/app/widgets/app_text.dart';

class AppTripCard extends StatelessWidget {
  const AppTripCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: GridView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.all(15),
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 1.4,
            mainAxisSpacing: 10,
            crossAxisSpacing: 1,
          ),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Modular.to.pushNamed(Routes.placeDetails,
                    arguments: {'index': index});
              },
              child: Hero(
                tag: 'tag$index',
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        // image: AssetImage("assets/images/app_bg_01.jpg"),
                        image: NetworkImage("https://i.pinimg.com/564x/ae/ba/1f/aeba1f8f0f837af7eb7156346f77a389.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: AppColors.opacityBlack,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          text: 'Place name',
                          fontSize: 17,
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Container(
                                margin: EdgeInsets.only(right: 5),
                                child: const Icon(
                                  Icons.place,
                                  size: 15,
                                )),
                            AppText(
                              text: 'Place locale',
                              fontSize: 12,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
