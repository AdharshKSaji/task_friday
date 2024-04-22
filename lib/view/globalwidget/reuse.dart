import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MyLoading extends StatelessWidget {
  const MyLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset("assets/aniamation/Animation - 1713509066174.json")
    );
  }
}

// ListView.builder(itemCount: providerObj.ProductList.length,itemBuilder: (context, index) => Container(
//         child: ListTile(leading:Image.network(providerObj.ProductList[index].image??"") ,
//         title: Text(providerObj.ProductList[index].price.toString()),
//         subtitle: Text(providerObj.ProductList[index].title.toString()),
      
//       ),)
// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }