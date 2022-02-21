import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:test_instalasi_flutter/components/bottom_navbar.dart';
import 'package:test_instalasi_flutter/constants.dart';
import 'package:test_instalasi_flutter/screens/details/components/app_bar.dart';
import 'package:test_instalasi_flutter/screens/details/components/body.dart';
import 'package:test_instalasi_flutter/screens/details/components/item_image.dart';
import 'package:test_instalasi_flutter/screens/details/components/order_button.dart';
import 'package:test_instalasi_flutter/screens/details/components/title_price_rating.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context: context),
      bottomNavigationBar: BottomNavBar(),
      body: Body(),
    );
  }
}
