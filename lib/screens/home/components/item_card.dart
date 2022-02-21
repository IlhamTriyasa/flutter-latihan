import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_instalasi_flutter/config/util/size_config.dart';
import 'package:test_instalasi_flutter/constants.dart';

class ItemCard extends StatelessWidget {
  final String title, shopName, svgSrc;
  final Function press;
  const ItemCard({
    Key key,
    this.title,
    this.shopName,
    this.svgSrc,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: SizeConfig.screenWidth * 0.43,
      margin: EdgeInsets.only(
        left: 15,
        right: 5,
        top: 20,
        bottom: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 20,
            color: Color(0xFFB0CCE1).withOpacity(0.32),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(0.13),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    svgSrc,
                    width: SizeConfig.screenWidth * 0.18,
                    height: SizeConfig.screenHeight * 0.055,
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: SizeConfig.screenWidth * 0.035),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  shopName,
                  style: TextStyle(fontSize: SizeConfig.screenWidth * 0.025),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
