import 'package:flutter/material.dart';
import 'package:task_friday/model/apimodel.dart';
import 'package:task_friday/model/cartmodel.dart';

class CartScreenController with ChangeNotifier{
  List<CartMODEL>addProductList=[];
  addToCart(ResModel product){
    addProductList.add(CartMODEL(product: product));
    notifyListeners();
  }
}