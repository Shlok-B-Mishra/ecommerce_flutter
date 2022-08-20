import 'package:ecom_flutter/Pages/cart/cart_page.dart';
import 'package:ecom_flutter/Pages/home/food_page_body.dart';
import 'package:ecom_flutter/Pages/home/main_food_page.dart';
import 'package:ecom_flutter/controllers/popular_product_controller.dart';
import 'package:ecom_flutter/data/repository/popular_product_repo.dart';
import 'package:ecom_flutter/route/route_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Pages/food/popular_food_detail.dart';
import 'Pages/food/recommended_food_detail.dart';
import 'controllers/recommended_product_controller.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  get popularProduct => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    Get.find<RecommendedProductController>().getRecommendedProductList();
    // Get.lazyPut(
    //     () => PopularProductController(popularProductRepo: popularProduct));
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const MainFoodPage(title: 'Flutter Demo Home Page'),
      // initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
    );
  }
}
