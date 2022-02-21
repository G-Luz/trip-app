import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trip_app/app/constants/style/app_colors.dart';
import 'package:trip_app/app/widgets/app_divider.dart';
import 'package:trip_app/app/modules/drawer/widgets/app_drawer_list_option.dart';
import 'package:trip_app/app/modules/drawer/widgets/app_drawer_list_settings_options.dart';
import 'package:trip_app/app/widgets/app_text.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.primaryVariant,
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.all(10),
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
                // color: Colors.white,
                ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  // CircleAvatar(
                  //   backgroundColor: Colors.grey,
                  // ),
                  const SizedBox(height: 5),
                  AppText(
                    text: 'User name',
                    fontColor: AppColors.opacityWhite,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          AppText(
                            text: 'Viagens',
                            fontSize: 16,
                          ),
                          const SizedBox(height: 10),
                          AppText(
                            text: '35',
                            fontSize: 13,
                            fontColor: Theme.of(context).colorScheme.primary,
                          ),
                        ],
                      ),
                      Container(
                        height: 50,
                        child: const VerticalDivider(
                          color: Colors.grey,
                          thickness: 0.1,
                        ),
                      ),
                      Column(
                        children: [
                          AppText(
                            text: 'Favoritos',
                            fontSize: 16,
                          ),
                          const SizedBox(height: 10),
                          AppText(
                            text: '15',
                            fontSize: 13,
                            fontColor: Theme.of(context).colorScheme.primary,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          ListTile(
            title: AppDrawerListOption(
              text: 'Home',
              icon: Icons.home_outlined,
              onPressedCallback: () {},
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: AppDrawerListOption(
              text: 'Favoritos',
              icon: Icons.favorite_border,
              onPressedCallback: () {},
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: AppDrawerListOption(
              text: 'Perfil',
              icon: Icons.person_outline,
              onPressedCallback: () {},
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          AppDivider(
            barColor: AppColors.opacityWhite,
            height: 0.1,
          ),
          AppText(
            text: 'Configurações',
            fontColor: AppColors.opacityWhite,
            fontSize: 10,
          ),
          ListTile(
            title: AppDrawerListSettingOptions(
              title: 'Tema',
              icon: Icons.dark_mode_outlined,
              // icon: Icons.light_mode_outlined,
              subTitle: 'Dark',
              onPressedCallback: () {},
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: AppDrawerListSettingOptions(
              title: 'Idioma',
              icon: Icons.language_outlined,
              // icon: Icons.light_mode_outlined,
              subTitle: 'Pt - BR',
              onPressedCallback: () {},
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: AppDrawerListSettingOptions(
              title: 'Versão do app',
              icon: Icons.workspaces_outline,
              // icon: Icons.light_mode_outlined,
              subTitle: '1.0',
              onPressedCallback: () {},
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }
}
