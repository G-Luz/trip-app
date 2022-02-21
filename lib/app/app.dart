import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:trip_app/app/constants/environments.dart';
import 'package:trip_app/app/constants/style/app_theme.dart';
import 'package:trip_app/app/repositories/app_theme/app_theme_controller.dart';
import 'package:trip_app/app/routes.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppThemeController appThemeController = Modular.get<AppThemeController>();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Observer(
        builder: (_) => MaterialApp(
              title: 'Auth Login app',
              debugShowCheckedModeBanner: false,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              theme: appThemeController.theme == Environments.darkTheme
                  ? AppTheme.darkThemeData
                  : AppTheme.lightThemeData,
              // themeMode: ThemeMode.system,
              initialRoute: Routes.initialRoute,
            ).modular());
  }
}

//
// child: ElevatedButton(
// onPressed: () {
// changeOptionCallback(index);
// },
// style: ButtonStyle(
// foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
// backgroundColor: MaterialStateProperty.all<Color>(
// indexSelectedButton == index
// ? AppColors.highlightBlue
//     : AppColors.lightBlue),
// shape: MaterialStateProperty.all<RoundedRectangleBorder>(
// const RoundedRectangleBorder(
// borderRadius: BorderRadius.all(Radius.circular(10)),
// ),
// ),
// ),
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Image.asset(
// "assets/images/$title.png",
// height: 20,
// ),
// const SizedBox(height: 10),
// Text(tr(title)),
// ],
// ),
// )
