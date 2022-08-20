import 'package:ecom_flutter/Pages/home/food_page_body.dart';
import 'package:ecom_flutter/utils/dimensions.dart';
import 'package:ecom_flutter/widget/big_text.dart';
import 'package:ecom_flutter/widget/small_text.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key, required String title}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api, no_logic_in_create_state, non_constant_identifier_names
  _MainFoodPageState createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    print("current height is" + MediaQuery.of(context).size.height.toString());
    return Scaffold(
        body: Column(
      children: [
        //Showing The Header
        Container(
            child: Container(
          margin: EdgeInsets.only(
              top: Dimensions.height15, bottom: Dimensions.height15),
          padding: EdgeInsets.only(
              left: Dimensions.width20, right: Dimensions.width20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  BigText(
                    text: "India",
                    color: AppColors.mainColor,
                  ),
                  Row(children: [
                    SmallText(text: "Mumbai", color: Colors.black54),
                    Icon(Icons.arrow_drop_down_rounded)
                  ])
                ],
              ),
              Container(
                width: Dimensions.height45,
                height: Dimensions.height45,
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: Dimensions.iconSize24,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius15),
                  color: AppColors.mainColor,
                ),
              )
            ],
          ),
        )),
        //Show the body
        Expanded(
            child: SingleChildScrollView(
          child: FoodPageBody(title: 'This is flutter app'),
        ))
      ],
    ));
  }
}
