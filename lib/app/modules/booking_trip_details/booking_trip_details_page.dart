import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:trip_app/app/constants/style/app_colors.dart';
import 'package:trip_app/app/modules/place_details/controller/place_details_controller.dart';
import 'package:trip_app/app/widgets/app_people_number.dart';
import 'package:trip_app/app/widgets/app_rating.dart';
import 'package:trip_app/app/widgets/app_text.dart';

class BookingTripDetails extends StatefulWidget {
  const BookingTripDetails({Key? key}) : super(key: key);

  @override
  _BookingTripDetailsState createState() => _BookingTripDetailsState();
}

class _BookingTripDetailsState
    extends ModularState<BookingTripDetails, PlaceDetailsController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryVariant,
      appBar: AppBar(
        backgroundColor: Colors.pink,
      ),
        body: Text("viadaooo")

    );
  }
}
