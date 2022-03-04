import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:local_auth/local_auth.dart';
import 'package:trip_app/app/modules/about/controller/about_controller.dart';
import 'package:trip_app/app/widgets/app_profile_image/app_account_image_actions.dart';
import 'package:trip_app/app/widgets/app_profile_image/app_profile_image.dart';
import 'package:trip_app/app/widgets/app_text.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends ModularState<AboutPage, AboutController> {
  final LocalAuthentication auth = LocalAuthentication();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryVariant,
      appBar: AppBar(
        title: AppText(
          text: 'Sobre o app'.toUpperCase(),
          fontSize: 17,
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
        elevation: 0,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          AppProfileImage(
            imagePath: '',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppProfileImageActions(
                  callbackChangeImage: () {}, icon: Icons.email),
              AppProfileImageActions(
                  callbackChangeImage: () {}, icon: FontAwesomeIcons.github),
              AppProfileImageActions(
                  callbackChangeImage: () {}, icon: FontAwesomeIcons.linkedin),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 30),
            child: AppText(
              text: 'Gabriel Luz Silva',
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      )),
    );
  }
}
