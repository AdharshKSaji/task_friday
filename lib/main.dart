
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_friday/controller/homescreencontroller.dart';
import 'package:task_friday/view/homescreen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [ChangeNotifierProvider(create: (context) => HomeScreenController()),
    
   ] ,child: MaterialApp(home: HomeScreen()));
  }
}