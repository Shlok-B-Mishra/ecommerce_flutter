import 'package:ecom_flutter/data/api/api_client.dart';
import 'package:ecom_flutter/utils/app_constants.dart';
import 'package:ecom_flutter/helper/dependencies.dart';
import 'package:get/get.dart';

class RecommendedProductRepo extends GetxService {
  final ApiClient apiClient;
  RecommendedProductRepo({required this.apiClient});

  Future<Response> getRecommendedProductList() async {
    return await apiClient.getData(AppConstants.RECOMMENDED_PRODUCT_URI);
  }
}
