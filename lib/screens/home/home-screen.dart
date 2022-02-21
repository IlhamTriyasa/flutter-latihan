import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_instalasi_flutter/components/bottom_navbar.dart';
import 'package:test_instalasi_flutter/screens/home/components/app-bar.dart';
import 'package:test_instalasi_flutter/screens/home/components/body.dart';
import 'package:test_instalasi_flutter/widget/navigation_drawer_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: homeAppBar(context),
      bottomNavigationBar: BottomNavBar(),
      body: Body(),
    );
  }
}
