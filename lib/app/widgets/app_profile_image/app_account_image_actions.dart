import 'package:flutter/material.dart';

class AppProfileImageActions extends StatelessWidget {
  Function callbackChangeImage;
  IconData icon;

  AppProfileImageActions(
      {required this.callbackChangeImage, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 40,
        width: 40,
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.teal), shape: BoxShape.circle),
        child: InkWell(
            onTap: () => {callbackChangeImage()},
            splashColor: Colors.grey,
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(icon, color: Theme.of(context).colorScheme.onSurface,)),
      ),
    );
  }
}
