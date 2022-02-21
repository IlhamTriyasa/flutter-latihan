import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_instalasi_flutter/components/menu_item.dart';
import 'package:test_instalasi_flutter/config/util/size_config.dart';
import 'package:test_instalasi_flutter/constants.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: <Widget>[
          Container(
            color: Colors.white,
            height: SizeConfig.screenHeight * 0.20,
            child: DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    alignment: Alignment.centerRight,
                    icon: Icon(Icons.close_rounded),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: kPrimaryColor,
            height: SizeConfig.screenHeight * 0.80,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  MenuItem(
                    icon: Icons.mail,
                    title: "Inbox",
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
