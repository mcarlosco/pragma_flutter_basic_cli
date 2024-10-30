import 'package:http/http.dart';

import '../../fun_pro/coin.dart';

import '../models.dart';

import 'api_common.dart';

final class ProductsApi with ApiCommon {
  Future<Coin<List<ProductModel>, Exception>> getProducts() =>
      httpHelper.sendRequest(
        sender: () => get(createSecureUri(apiConfig.productsPath)),
        constructor: (List<dynamic> list) => List.unmodifiable(
            list.map<ProductModel>((map) => ProductModel.from(map))),
      );

  Future<Coin<ProductModel, Exception>> getProduct(int id) =>
      httpHelper.sendRequest(
        sender: () => get(createSecureUri('${apiConfig.productsPath}/$id')),
        constructor: ProductModel.from,
      );

  Future<Coin<List<CategoryModel>, Exception>> getCategories() =>
      httpHelper.sendRequest(
        sender: () => get(createSecureUri(apiConfig.categoriesPath)),
        constructor: (List<dynamic> list) => List.unmodifiable(
            list.map<CategoryModel>((string) => CategoryModel.from(string))),
      );
}
