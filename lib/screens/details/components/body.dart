import 'package:flutter/material.dart';
import 'package:test_instalasi_flutter/constants.dart';
import 'package:test_instalasi_flutter/screens/details/components/item_image.dart';
import 'package:test_instalasi_flutter/screens/details/components/order_button.dart';
import 'package:test_instalasi_flutter/screens/details/components/title_price_rating.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        ItemImage(
          imgSrc: "assets/images/burger.png",
        ),
        Expanded(
          child: ItemInfo(),
        ),
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: <Widget>[
          shopLocation(name: "McDonalds"),
          TitlePriceRating(
            name: "Cheese Burger",
            numOfReviews: 23,
            rating: 4,
            price: 10,
            onRatingChanged: (value) {},
          ),
          Text(
            "Nowadays, making printed materials have become fast, easy and simple. If you want your promotional material to be an eye-catching object, you should make it colored. By way using inkjet printer this is not hard to make. An inkjet printer is any printer that places extremely small droplets of ink onto paper to create an image.",
            style: TextStyle(height: 1.5),
          ),
          SizedBox(height: size.height * 0.1),
          OrderButton(
            size: size,
            press: () {},
          ),
        ],
      ),
    );
  }

  Row shopLocation({String name}) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.location_on,
          color: kSecondaryColor,
        ),
        SizedBox(width: 10),
        Text(name),
      ],
    );
  }
}
