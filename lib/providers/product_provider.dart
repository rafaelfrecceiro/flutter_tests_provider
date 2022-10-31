import 'package:flutter/material.dart';

import '../models/product_model.dart';

class ProductProvider extends ChangeNotifier {
  List<ProductModel> products = [
    ProductModel(
      id: 1,
      name: 'God of War',
      value: 199.99,
    ),
    ProductModel(
      id: 2,
      name: 'Final Fantasy XVI',
      value: 239.99,
    ),
  ];
}
