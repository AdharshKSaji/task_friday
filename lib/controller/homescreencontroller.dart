import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:task_friday/model/apimodel.dart';

class HomeScreenController with ChangeNotifier{
  bool isloading = false;
   List<ResModel>ProductList=[];
  
  Future getProductData()async{
    isloading = true;
  notifyListeners() ;
    final url =Uri.parse("https://fakestoreapi.com/products");
    final res = await http.get(url);
   
   if(res.statusCode==200){
    final decodedata = jsonDecode(res.body) as List;
      print(decodedata);
      ProductList=decodedata.map((e) => ResModel.fromJson(e)).toList();
      print(ProductList.first.title.toString());


   }else{
    print("failed");
   } isloading = false;
    notifyListeners();
  }
}