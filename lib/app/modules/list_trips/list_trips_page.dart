import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:local_auth/local_auth.dart';
import 'package:trip_app/app/constants/style/app_colors.dart';
import 'package:trip_app/app/modules/list_trips/controller/list_trips_controller.dart';
import 'package:trip_app/app/modules/list_trips/widgets/app_filters_button.dart';
import 'package:trip_app/app/routes.dart';
import 'package:trip_app/app/widgets/app_logo.dart';
import 'package:trip_app/app/widgets/app_text.dart';
import 'package:trip_app/app/widgets/app_text_field.dart';

class ListTripsPage extends StatefulWidget {
  const ListTripsPage({Key? key}) : super(key: key);

  @override
  _ListTripsPageState createState() => _ListTripsPageState();
}

class _ListTripsPageState
    extends ModularState<ListTripsPage, ListTripsController> {
  final LocalAuthentication auth = LocalAuthentication();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryVariant,
      appBar: AppBar(
        title: Text('Viagens'),
        backgroundColor: Colors.teal,
        elevation: 0,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(color: Colors.teal),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AppText(text: '5.000 viagens'),
                  ElevatedButton(
                    onPressed: () {
                      //todo: tentar esse cara
                      // https://pub.dev/packages/bubble_showcase
                    },
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.transparent),
                      elevation: MaterialStateProperty.all<double>(0),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        AppText(text: 'Filtrar'),
                        Icon(Icons.keyboard_arrow_down)
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Observer(builder: (context) {
              return Container(
                height: 150,
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: AppFiltersButton(
                  selectedTitle: 'Favoritos',
                  selectedIndex: controller.filterSelectedIndex,
                  selectedFilterCallback: (index) {
                    controller.changeFilter(index);
                  },
                ),
              );
            }),
            Container(
              child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(15),
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.6,
                    mainAxisSpacing: 3,
                    crossAxisSpacing: 3,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    List<String> urls = [
                      "https://i.pinimg.com/564x/14/c1/84/14c18438ab184f759414e59675ff9ef1.jpg",
                      "https://i.pinimg.com/564x/44/4e/f2/444ef2290b454ffcdebf833b00fd5ebd.jpg",
                      "https://i.pinimg.com/564x/71/e5/11/71e511c7bc7f0dbd0c2d8a7704e1d8f2.jpg",
                      "https://i.pinimg.com/564x/8c/d2/c3/8cd2c3c39b054fc02f1efdbd4c607f1d.jpg",
                      "https://i.pinimg.com/564x/d9/ec/c3/d9ecc3bdeea6dc8e4cea99cc38d2f1f7.jpg",
                      "https://i.pinimg.com/564x/df/40/a2/df40a23ebe71d46617836f6c378c2749.jpg",
                      "https://i.pinimg.com/564x/24/cb/fb/24cbfba17562b2ec616137c5d5e99dd3.jpg",
                      "https://i.pinimg.com/564x/88/a0/e3/88a0e3831025c2b5a10ca6a243e48268.jpg",
                      "https://i.pinimg.com/564x/f8/98/9e/f8989e7531e40b530753dbef7e273299.jpg",
                      "https://i.pinimg.com/564x/b7/36/c6/b736c6bf6f4fe5f90ca77345744bc09a.jpg",
                      "https://i.pinimg.com/564x/c7/b6/5d/c7b65dc4b228ed6f432c9a1327c4b9e6.jpg",
                    ];

                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: NetworkImage(urls[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.3),
                              gradient: LinearGradient(
                                colors: [Colors.transparent, Colors.black],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(8),
                                  bottomLeft: Radius.circular(8))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 70,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AppText(
                                      text: 'Place name',
                                      textOverflow: TextOverflow.ellipsis,
                                    ),
                                    AppText(
                                      text: 'Place locale',
                                      fontSize: 13,
                                      textOverflow: TextOverflow.ellipsis,
                                    ),
                                    AppText(text: '\$ 1500', fontSize: 13),
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(bottom: 5),
                                      child: Icon(Icons.favorite)),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
