import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_instalasi_flutter/components/search_box.dart';
import 'package:test_instalasi_flutter/screens/home/components/category_list.dart';
import 'package:test_instalasi_flutter/screens/home/components/discount_card.dart';
import 'package:test_instalasi_flutter/screens/home/components/item_card.dart';
import 'package:test_instalasi_flutter/screens/home/components/item_list.dart';
import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SearchBox(
            onChanged: (value) {},
          ),
          CategoryList(),
          ItemList(),
          DiscountCard()
        ],
      ),
    );
  }
}
