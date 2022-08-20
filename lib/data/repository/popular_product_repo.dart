import 'package:ecom_flutter/data/api/api_client.dart';
import 'package:ecom_flutter/utils/app_constants.dart';
import 'package:ecom_flutter/helper/dependencies.dart';
import 'package:get/get.dart';

class PopularProductRepo extends GetxService {
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async {
    return await apiClient.getData(AppConstants.POPULAR_PRODUCT_URI);
  }
}
