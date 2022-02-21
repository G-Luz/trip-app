import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:trip_app/app/constants/style/app_colors.dart';
import 'package:trip_app/app/modules/drawer/controller/drawer_controller.dart';
import 'package:trip_app/app/widgets/app_divider.dart';
import 'package:trip_app/app/modules/drawer/widgets/app_drawer_list_option.dart';
import 'package:trip_app/app/modules/drawer/widgets/app_drawer_list_settings_options.dart';
import 'package:trip_app/app/widgets/app_text.dart';

class DrawerPage extends WidgetModule {
  @override
  List<Bind> get binds => [Bind.singleton((i) => AppDrawerController())];

  @override
  Widget get view => Builder(builder: (context) {
        AppDrawerController controller = Modular.get();

        return Container(
          margin:
              const EdgeInsets.only(left: 10, right: 10, top: 50, bottom: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondaryVariant),
          // color: Color(0xffdfdede)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.grey,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          text: 'example@email.com',
                          fontColor: AppColors.opacityWhite,
                          fontSize: 17,
                        ),
                        const SizedBox(width: 5),
                        AppText(
                          text: 'User name',
                          fontColor: AppColors.opacityWhite,
                          fontSize: 10,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 150,
                    child: Column(
                      children: [
                        AppText(
                          text: 'drawer.trips'.tr(),
                          fontSize: 16,
                          fontColor: Colors.white,
                        ),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.flight_takeoff_outlined,
                              size: 15,
                              color: AppColors.lightTeal,
                            ),
                            const SizedBox(width: 5),
                            AppText(
                              text: '35',
                              fontSize: 13,
                              fontColor: AppColors.lightTeal,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                      height: 50,
                      child: VerticalDivider(
                        color: AppColors.lightTeal,
                        thickness: 1,
                      )),
                  SizedBox(
                    width: 150,
                    child: Column(
                      children: [
                        AppText(
                          text: 'drawer.favorite'.tr(),
                          fontSize: 16,
                          fontColor: Colors.white,
                        ),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.favorite_border_outlined,
                              size: 15,
                              color: AppColors.lightTeal,
                            ),
                            const SizedBox(width: 5),
                            AppText(
                              text: '15',
                              fontSize: 13,
                              fontColor: AppColors.lightTeal,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Container(
                width: 180,
                margin: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppDrawerListOption(
                      text: 'drawer.home'.tr(),
                      icon: Icons.home_outlined,
                      onPressedCallback: () {},
                    ),
                    AppDrawerListOption(
                      text: 'drawer.favorite'.tr(),
                      icon: Icons.favorite_border,
                      onPressedCallback: () {},
                    ),
                    AppDrawerListOption(
                      text: 'drawer.account'.tr(),
                      icon: Icons.person_outline,
                      onPressedCallback: () {},
                    ),
                    AppDivider(
                      barColor: Theme.of(context).colorScheme.onSurface,
                      height: 0.1,
                    ),
                    AppText(
                      text: 'drawer.settings'.tr(),
                      fontColor: Theme.of(context).colorScheme.onSurface,
                      fontSize: 10,
                    ),
                    const SizedBox(height: 5),
                    AppDrawerListSettingOptions(
                      title: 'theme.theme'.tr(),
                      icon: controller.appThemeController.checkLabelTheme() ==
                              'theme.dark_theme'.tr()
                          ? Icons.dark_mode_outlined
                          : Icons.light_mode_outlined,
                      subTitle: controller.appThemeController.checkLabelTheme(),
                      onPressedCallback: () {
                        controller.openThemeSettings();
                      },
                    ),
                    AppDrawerListSettingOptions(
                      title: tr('language.language'),
                      icon: Icons.language_outlined,
                      subTitle: context.locale == const Locale('pt', 'BR')
                          ? tr('language.pt_language')
                          : tr('language.en_language'),
                      onPressedCallback: () {
                        controller.openLanguageSettings();
                      },
                    ),
                    AppDrawerListSettingOptions(
                      title: tr('drawer.app_version'),
                      icon: Icons.workspaces_outline,
                      subTitle: '1.0',
                      onPressedCallback: () {},
                    ),
                    AppDrawerListOption(
                      text: tr('drawer.logout'),
                      icon: Icons.exit_to_app_outlined,
                      onPressedCallback: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      });
}
