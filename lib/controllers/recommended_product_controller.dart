import 'package:ecom_flutter/data/repository/popular_product_repo.dart';
import 'package:ecom_flutter/models/products_model.dart';
import 'package:ecom_flutter/helper/dependencies.dart';
import 'package:get/get.dart';

import '../data/repository/recommended_product_repo.dart';

class RecommendedProductController extends GetxController {
  final RecommendedProductRepo recommendedProductRepo;
  RecommendedProductController({required this.recommendedProductRepo});
  List<dynamic> _recommendedProductList = [];
  List<dynamic> get recommendedProductList => _recommendedProductList;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getRecommendedProductList() async {
    Response response =
        await recommendedProductRepo.getRecommendedProductList();
    if (response.statusCode == 200) {
      // print("got products");
      _recommendedProductList = [];
      _recommendedProductList.addAll(Product.fromJson(response.body).products);

      _isLoaded = true;
      update();
    } else {}
  }
}
