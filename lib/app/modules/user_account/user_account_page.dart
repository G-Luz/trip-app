import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:local_auth/local_auth.dart';
import 'package:trip_app/app/modules/user_account/controller/user_account_controller.dart';
import 'package:trip_app/app/modules/user_account/widgets/app_account_options.dart';
import 'package:trip_app/app/routes.dart';
import 'package:trip_app/app/widgets/app_profile_image/app_account_image_actions.dart';
import 'package:trip_app/app/widgets/app_profile_image/app_profile_image.dart';
import 'package:trip_app/app/widgets/app_text.dart';

class UserAccountPage extends StatefulWidget {
  const UserAccountPage({Key? key}) : super(key: key);

  @override
  _UserAccountPageState createState() => _UserAccountPageState();
}

class _UserAccountPageState
    extends ModularState<UserAccountPage, UserAccountController> {
  final LocalAuthentication auth = LocalAuthentication();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryVariant,
      appBar: AppBar(
        title: AppText(
          text: 'Perfil'.toUpperCase(),
          fontSize: 17,
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppProfileImage(imagePath: '',),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppProfileImageActions(
                    callbackChangeImage: () {},
                    icon: Icons.photo_library_outlined),
                AppProfileImageActions(
                    callbackChangeImage: () {},
                    icon: Icons.camera_alt_outlined),
                AppProfileImageActions(
                    callbackChangeImage: () {}, icon: Icons.delete_outline),
              ],
            ),
            const SizedBox(height: 10),
            AppAccountOption(
              onPressedCallback: () async {
                await Navigator.of(context).push(
                  MaterialPageRoute(
                    fullscreenDialog: true,
                    builder: (context) {
                      return Scaffold(
                        backgroundColor: Colors.purple,
                        body: Container(
                          child: Column(
                            children: [
                              Text("eae"),
                              Text("eae"),
                              Text("eae"),
                              Text("eae"),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
              content: "Gabriel Luz",
              option: 'Nome de preferência',
            ),
            AppAccountOption(
              onPressedCallback: () {},
              option: 'Email',
              content: 'g.luzsilva1@gmail.com',
            ),
            AppAccountOption(
              onPressedCallback: () {},
              option: 'Telefone',
              content: '(11) 95829-4852',
            ),
            AppAccountOption(
              onPressedCallback: () {},
              option: 'Alterar senha de acesso',
              content: '*******',
            ),
            AppAccountOption(
              onPressedCallback: () {
                Modular.to.pushNamed(Routes.aboutApp);
              },
              option: 'Informações do app',
              content: 'Sobre, versões, etc',
            ),
          ],
        ),
      ),
    );
  }
}
