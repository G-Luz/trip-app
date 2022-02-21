import 'package:flutter/material.dart';
import 'package:trip_app/app/constants/style/app_colors.dart';
import 'package:trip_app/app/widgets/app_text.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: 30, left: 15, right: 15),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu_rounded,
                size: 35,
              )),
          AppText(
            text: "TripStore",
            fontFamily: 'Astral',
            fontSize: 30,
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(7)),
            child: Center(child: Text("foto")),
          )
        ],
      ),
      // color: Colors.red,
    );
  }
}
