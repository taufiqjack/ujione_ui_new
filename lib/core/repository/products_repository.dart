import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:e_learning_uji/core/constans/api.dart';
import 'package:e_learning_uji/core/models/products_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ProductsRepo extends ChangeNotifier {
  Response? response;
  Dio dio = Dio();

  Future<List<ProductModel>?> getProduct(BuildContext context) async {
    try {
      response = await dio.get(BaseUrl().rg + BaseUrl().products);
      notifyListeners();
      Iterable data = response!.data;
      if (kDebugMode) {
        print('cek : $data');
      }
      List<ProductModel> listdata =
          data.map((map) => ProductModel.fromJson(map)).toList();

      return listdata;
    } catch (e) {
      Fluttertoast.showToast(msg: 'Error');
    }
  }
}
