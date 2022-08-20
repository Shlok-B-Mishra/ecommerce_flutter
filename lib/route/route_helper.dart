import 'package:ecom_flutter/Pages/food/popular_food_detail.dart';
import 'package:ecom_flutter/Pages/food/recommended_food_detail.dart';
import 'package:ecom_flutter/Pages/home/main_food_page.dart';
import 'package:get/route_manager.dart';

class RouteHelper {
  static const String initial = "/";
  static const String popularFood = "/popular-food";
  static const String recommendedFood = "/recommeded-food";

  static String getInitial() => '$initial';
  static String getPopularFood(int pageId) => '$popularFood?pageId=$pageId';
  static String getRecommendedFood(int pageId) =>
      '$recommendedFood?pageId=$pageId';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => MainFoodPage(title: '')),
    GetPage(
        name: popularFood,
        page: () {
          var pageId = Get.parameters['pageId'];
          return PopularFoodDetail(pageId: int.parse(pageId!));
        },
        transition: Transition.fadeIn),
    GetPage(
        name: recommendedFood,
        page: () {
          var pageId = Get.parameters['pageId'];
          return RecommendedFoodDetail(pageId: int.parse(pageId!));
        },
        transition: Transition.fadeIn),
  ];
}
