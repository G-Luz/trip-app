import 'package:flutter/material.dart';
import 'package:trip_app/app/widgets/app_profile_image/app_account_image_actions.dart';

class AppProfileImage extends StatelessWidget {
  String imagePath;

  AppProfileImage({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: 180,
          // color: Colors.red,
          child: CircleAvatar(
            backgroundColor: Colors.teal.withOpacity(0.3),
          ),
        ),
      ],
    );
  }
}
