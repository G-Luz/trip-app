import 'package:flutter/material.dart';
import 'package:trip_app/app/widgets/app_text.dart';

class AppLanguageOption extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 130,
      child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
            elevation: MaterialStateProperty.all<double>(0),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                side: BorderSide(color: Colors.yellow),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: Image.asset(
                  "assets/images/ic_brazil.png",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          )),
    );
  }
}
