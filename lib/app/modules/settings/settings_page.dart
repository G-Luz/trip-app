import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:trip_app/app/modules/settings/controller/settings_controller.dart';
import 'package:trip_app/app/modules/settings/widgets/app_settings_option.dart';
import 'package:trip_app/app/widgets/app_text.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends ModularState<SettingsPage, SettingsController>
    with TickerProviderStateMixin {
  late AnimationController themeAnimationController =
      AnimationController(vsync: this);
  late AnimationController languageAnimationController =
      AnimationController(vsync: this);

  @override
  void initState() {
    super.initState();
    managerAnimationTime(Modular.args?.data['option']);
  }

  @override
  void dispose() {
    themeAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryVariant,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme:
            IconThemeData(color: Theme.of(context).colorScheme.onSurface),
        title: AppText(
          text: 'Configurações',
          fontSize: 18,
          fontColor: Theme.of(context).colorScheme.onSurface,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    text: 'theme.theme'.tr(),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontColor: Theme.of(context).colorScheme.onSurface,
                  ),
                  const SizedBox(height: 10),
                  FadeTransition(
                    opacity: themeAnimationController,
                    child: Container(
                      height: 220,
                      decoration: BoxDecoration(
                          // border: Border.all(width: 0.1, color: Colors.green),
                          border: Border.all(width: 0.1, color: Colors.teal),
                          borderRadius: BorderRadius.circular(10)),
                      child: Observer(builder: (context) {
                        return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              AppSettingsOption(
                                  optionTitle: 'theme.light_theme'.tr(),
                                  assetImagePath:
                                      "assets/images/ic_light_app.png",
                                  buttonWidthSize: 90,
                                  buttonHeightSize: 170,
                                  iconWidthSize: 70,
                                  iconHeightSize: 80,
                                  isSelectedOption: !controller.isDarkTheme(),
                                  onSelectedOption: () {
                                    controller.changeLightTheme();
                                  }),
                              AppSettingsOption(
                                  optionTitle: 'theme.dark_theme'.tr(),
                                  assetImagePath:
                                      "assets/images/ic_dark_app.png",
                                  buttonWidthSize: 90,
                                  buttonHeightSize: 170,
                                  iconWidthSize: 70,
                                  iconHeightSize: 80,
                                  isSelectedOption: controller.isDarkTheme(),
                                  onSelectedOption: () {
                                    controller.changeDarkTheme();
                                  }),
                            ]);
                      }),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    text: 'language.language'.tr(),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontColor: Theme.of(context).colorScheme.onSurface,
                  ),
                  const SizedBox(height: 10),
                  FadeTransition(
                    opacity: languageAnimationController,
                    child: Container(
                      height: 220,
                      decoration: BoxDecoration(
                          // border: Border.all(width: 0.1, color: Colors.green),
                          border: Border.all(width: 0.1, color: Colors.teal),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            AppSettingsOption(
                                optionTitle: 'language.pt_language'.tr(),
                                assetImagePath: "assets/images/ic_brazil.png",
                                buttonWidthSize: 130,
                                buttonHeightSize: 150,
                                iconWidthSize: 70,
                                iconHeightSize: 70,
                                isSelectedOption:
                                    controller.isPortugueseLanguage(context),
                                onSelectedOption: () {
                                  controller.changePortugueseLanguage(context);
                                }),
                            AppSettingsOption(
                                optionTitle: 'language.en_language'.tr(),
                                assetImagePath: "assets/images/ic_usa.png",
                                buttonWidthSize: 130,
                                buttonHeightSize: 150,
                                iconWidthSize: 70,
                                iconHeightSize: 70,
                                isSelectedOption:
                                    !controller.isPortugueseLanguage(context),
                                onSelectedOption: () {
                                  controller.changeEnglishLanguage(context);
                                }),
                          ]),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  managerAnimationTime(String option) {
    if (option == 'theme') {
      themeAnimationController.duration = const Duration(seconds: 1);
      themeAnimationController.repeat(reverse: true);
      Future.delayed(Duration(seconds: 2), () {
        themeAnimationController.reset(); // stops the animation if in progress
        themeAnimationController.forward();
      });
      languageAnimationController.duration = const Duration(microseconds: 1);
      languageAnimationController.forward();
      Future.delayed(Duration(microseconds: 2), () {
        languageAnimationController
            .reset(); // stops the animation if in progress
        languageAnimationController.forward();
      });
    } else {
      themeAnimationController.duration = const Duration(microseconds: 1);
      themeAnimationController.forward();
      Future.delayed(Duration(microseconds: 2), () {
        themeAnimationController.reset(); // stops the animation if in progress
        themeAnimationController.forward();
      });
      languageAnimationController.duration = const Duration(seconds: 1);
      languageAnimationController.repeat(reverse: true);
      Future.delayed(Duration(seconds: 2), () {
        languageAnimationController
            .reset(); // stops the animation if in progress
        languageAnimationController.forward();
      });
    }
  }
}
