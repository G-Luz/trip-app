import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:trip_app/app/constants/duration/durations.dart';
import 'package:trip_app/app/modules/home/controller/home_controller.dart';
import 'package:trip_app/app/modules/drawer/drawer.dart';
import 'package:trip_app/app/modules/home/widgets/app_category_button.dart';
import 'package:trip_app/app/widgets/app_divider.dart';
import 'package:trip_app/app/widgets/app_text.dart';
import 'package:trip_app/app/widgets/app_trip_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondaryVariant,
      body: Stack(
        children: [
          DrawerPage(),
          Observer(builder: (context) {
            return AnimatedContainer(
              transform: Matrix4.translationValues(
                  controller.xOffset, controller.yOffset, 0)
                ..scale(controller.scaleFactor)
                ..rotateY(controller.isDrawerOpen ? -0.5 : 0),
              duration: const Duration(
                  milliseconds: Durations.drawerAnimationDuration),
              height: controller.isDrawerOpen
                  ? (MediaQuery.of(context).size.height * 0.8)
                  : MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  // color: Colors.white,
                  color: Theme.of(context).colorScheme.primaryVariant,
                  borderRadius: BorderRadius.circular(
                      controller.isDrawerOpen ? 40 : 0.0)),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // const AppHeader(/*user_data*/),

                    Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width,
                      padding:
                          const EdgeInsets.only(top: 30, left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          controller.isDrawerOpen
                              ? IconButton(
                                  icon: Icon(Icons.arrow_back,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface),
                                  onPressed: () {
                                    controller.handleDrawer();
                                  },
                                )
                              : IconButton(
                                  icon: Icon(
                                    Icons.menu_rounded,
                                    size: 35,
                                    color:
                                        Theme.of(context).colorScheme.onSurface,
                                  ),
                                  onPressed: () {
                                    controller.handleDrawer();
                                  }),
                          AppText(
                            text: "TripStore",
                            fontFamily: 'Astral',
                            fontSize: 30,
                            fontColor: Theme.of(context).colorScheme.onSurface,
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.circular(7)),
                            child: Center(
                                child: GestureDetector(
                                    onTap: () {}, child: Text("foto"))),
                          )
                        ],
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText(
                                  text: 'Destinos',
                                  fontSize: 30,
                                  fontColor:
                                      Theme.of(context).colorScheme.onSurface,
                                  fontWeight: FontWeight.bold,
                                ),
                                const SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    AppText(
                                      text: 'Melhores lugares',
                                      fontSize: 15,
                                      fontColor: Theme.of(context)
                                          .colorScheme
                                          .onSurface,
                                    ),
                                    Container(
                                      height: 20,
                                      child: ElevatedButton(
                                        onPressed: (){},
                                        child: AppText(
                                          text: 'Ver todos',
                                          fontSize: 10,
                                          fontColor: Theme.of(context)
                                              .colorScheme
                                              .onSurface,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          Container(
                              child: AppTripCard(/*send_data_to_widget*/)),

                          const SizedBox(height: 20),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText(
                                  text: 'Categorias mais populares',
                                  fontSize: 15,
                                  fontColor:
                                      Theme.of(context).colorScheme.onSurface,
                                ),
                              ],
                            ),
                          ),
                          // Container(
                          //   height: 80,
                          //   width: MediaQuery.of(context).size.width,
                          //   margin: const EdgeInsets.symmetric(horizontal: 15),
                          //   child: ListView.builder(
                          //       scrollDirection: Axis.horizontal,
                          //       shrinkWrap: true,
                          //       itemCount: 7,
                          //       padding: EdgeInsets.zero,
                          //       physics: const BouncingScrollPhysics(),
                          //       itemBuilder: (context, index) {
                          //         return buildListButton(context, index);
                          //       }),
                          // ),
                          const SizedBox(height: 10),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 15),
                            child: GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithMaxCrossAxisExtent(
                                        maxCrossAxisExtent: 100,
                                        childAspectRatio: 1,
                                        crossAxisSpacing: 3,
                                        mainAxisSpacing: 5),
                                shrinkWrap: true,
                                itemCount: 4,
                                padding: EdgeInsets.zero,
                                physics: const BouncingScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return buildListButton(context, index);
                                }),
                          ),

                          const SizedBox(height: 30),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText(
                                  text: 'Descubra',
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  fontColor:
                                      Theme.of(context).colorScheme.onSurface,
                                ),
                                const SizedBox(height: 15),
                                AppText(
                                  text: 'Lugares lindos',
                                  fontSize: 15,
                                  fontColor:
                                      Theme.of(context).colorScheme.onSurface,
                                ),
                              ],
                            ),
                          ),


                          //todo: resolver esse cara aqui (listview com tamanho definido)
                          // Flexible(
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: 10,
                                padding: EdgeInsets.zero,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Container(
                                    height: 100,
                                    margin: EdgeInsets.symmetric(vertical: 10),
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(0.1),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: Colors.teal,
                                            image: const DecorationImage(
                                                image: NetworkImage(
                                                    "https://i.pinimg.com/564x/2f/cd/f0/2fcdf0b1f6db52c0bceeb946ee48d520.jpg"),
                                                fit: BoxFit.cover),
                                              borderRadius:
                                              BorderRadius.circular(10)
                                          ),
                                        ),

                                        Container(
                                          width: 150,
                                          margin: EdgeInsets.symmetric(horizontal: 20),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              AppText(text: 'Place name'),
                                              AppText(text: 'Place locale'),
                                              AppText(text: '\$2100'),
                                            ],
                                          ),
                                        ),

                                        Row(
                                          children: [
                                            Icon(Icons.favorite_border_outlined),
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                }),
                          ),

                          const SizedBox(height: 50),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          })
        ],
      ),
    );
  }

  Widget buildListButton(BuildContext context, int index) {
    List<Widget> buttonList = [
      AppCategoryButton(
          buttonLabel: 'Romatico',
          buttonIconPath: "assets/images/ic_spiritual.png",
          onPressedCallback: () {}),
      AppCategoryButton(
          buttonLabel: 'Cultural',
          buttonIconPath: "assets/images/ic_spiritual.png",
          onPressedCallback: () {}),
      AppCategoryButton(
          buttonLabel: 'Relaxante',
          buttonIconPath: "assets/images/ic_spiritual.png",
          onPressedCallback: () {}),
      AppCategoryButton(
          buttonLabel: 'Espiritual',
          buttonIconPath: "assets/images/ic_spiritual.png",
          onPressedCallback: () {}),
    ];

    return buttonList[index];
  }
}
