import 'package:flutter/material.dart';
import 'package:test_instalasi_flutter/config/util/size_config.dart';

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const MenuItem({Key key, this.icon, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuTextColor = Colors.black38;
    final menuTextHoverColor = Colors.amber;
    return ListTile(
      leading: Icon(icon, color: menuTextColor),
      title: Text(
        title,
        style: TextStyle(
            color: Colors.black38, fontSize: SizeConfig.drawerMenuItemfontSize),
      ),
      hoverColor: menuTextHoverColor,
      onTap: () {},
    );
  }
}
