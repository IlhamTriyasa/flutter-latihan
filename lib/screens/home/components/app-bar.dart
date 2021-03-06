import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_instalasi_flutter/constants.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: Builder(builder: (context) {
      return IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      );
    }),
    title: Center(
      child: RichText(
        text: TextSpan(
          style: Theme.of(context)
              .textTheme
              .headline6
              .copyWith(fontWeight: FontWeight.bold),
          children: [
            TextSpan(
              text: "Ngopi",
              style: TextStyle(color: kSecondaryColor),
            ),
            TextSpan(
              text: "Yuk",
              style: TextStyle(color: kPrimaryColor),
            ),
          ],
        ),
      ),
    ),
    actions: <Widget>[
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset("assets/icons/notification.svg"),
      )
    ],
  );
}
