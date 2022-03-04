import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:trip_app/app/constants/style/app_colors.dart';
import 'package:trip_app/app/modules/place_details/controller/place_details_controller.dart';
import 'package:trip_app/app/modules/place_details/widgets/app_details_section.dart';
import 'package:trip_app/app/modules/place_details/widgets/app_overview_section.dart';
import 'package:trip_app/app/modules/place_details/widgets/app_review_section.dart';
import 'package:trip_app/app/modules/place_details/widgets/app_section_title.dart';
import 'package:trip_app/app/routes.dart';
import 'package:trip_app/app/widgets/app_people_number.dart';
import 'package:trip_app/app/widgets/app_rating.dart';
import 'package:trip_app/app/widgets/app_section_options.dart';
import 'package:trip_app/app/widgets/app_text.dart';

class PlaceDetailsPage extends StatefulWidget {
  const PlaceDetailsPage({Key? key}) : super(key: key);

  @override
  _PlaceDetailsPageState createState() => _PlaceDetailsPageState();
}

class _PlaceDetailsPageState
    extends ModularState<PlaceDetailsPage, PlaceDetailsController> {
  int index = Modular.args?.data['index'] ?? '0';
  bool favo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryVariant,
      bottomSheet: Container(
        height: 65,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color:
                Theme.of(context).colorScheme.primaryVariant.withOpacity(0.8)),

        // BoxDecoration(color: Colors.red),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                height: 55,
                // margin: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      if (favo) {
                        favo = false;
                      } else {
                        favo = true;
                      }
                    });
                  },
                  icon: favo
                      ? const Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 20,
                        )
                      : const Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                          size: 20,
                        ),
                )),
            Container(
              height: 55,
              width: MediaQuery.of(context).size.width * 0.75,
              child: ElevatedButton(
                onPressed: () {
                  Modular.to.pushNamed(Routes.bookingTripDetails);
                },
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Theme.of(context).colorScheme.primary)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppText(
                      text: 'Book Trip Now',
                      fontSize: 18,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          Observer(builder: (_) {
            return SliverAppBar(
              pinned: false,
              snap: false,
              floating: false,
              expandedHeight: 250,
              backgroundColor: Colors.transparent,
              // backgroundColor: Colors.teal,
              flexibleSpace: LayoutBuilder(builder: (context, constraints) {
                return FlexibleSpaceBar(
                  background: Hero(
                    tag: 'tag$index',
                    child: Image.network(
                      'https://i.pinimg.com/564x/18/a5/be/18a5be8b2358dfd9853656c7b2ae654c.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  // centerTitle: true,
                  // title: AppText(
                  //   text: 'Place name',
                  //   fontSize: 20,
                  //   fontColor: AppColors.white,
                  // ),
                  // centerTitle: true,
                  // titlePadding:
                  //     EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  // collapseMode: CollapseMode.parallax,
                );
              }),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert),
                  splashColor: Theme.of(context).colorScheme.primary,
                ),
              ],
            );
          }),
          SliverLayoutBuilder(builder: (context, constraints) {
            return SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryVariant,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Observer(builder: (_) {
                              return AppSectionTitle(
                                  sectionIndex: controller.selectedIndex);
                            }),
                            Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    AppText(
                                      text: '\$ 150',
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      fontColor: Colors.teal,
                                    ),
                                    const SizedBox(height: 10),
                                    AppText(
                                      text: '* Preço estimado',
                                      fontSize: 12,
                                      fontColor: Colors.teal,
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                      Observer(builder: (_) {
                        return AppSectionOptions(
                            selectedIndex: controller.selectedIndex,
                            selectedPeopleCallback: (index) {
                              controller.sectionOptionCallback(index);
                            });
                      }),
                      const SizedBox(height: 10),
                      Observer(builder: (_) {
                        if (controller.selectedIndex == 0) {
                          return const AppOverviewSection();
                        }

                        if (controller.selectedIndex == 1) {
                          return const AppDetailsSection();
                        }
                        if (controller.selectedIndex == 2) {
                          return const AppReviewSection();
                        }
                        return Container();
                      }),
                      const SizedBox(height: 75),
                    ],
                  ),
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}

// Container(
//     margin: const EdgeInsets.symmetric(vertical: 10),
//     child: AppPeopleNumber(
//       selectedIndex: selectedIndex,
//       selectedPeopleCallback: (index) {
//         setState(() {
//           selectedIndex = index;
//         });
//       },
//     )),
