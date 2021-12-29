import 'package:flutter/material.dart';
import 'package:test_instalasi_flutter/screens/home/components/app-bar.dart';
import 'package:test_instalasi_flutter/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: Body(),
    );
  }
}
