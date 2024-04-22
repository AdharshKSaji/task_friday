import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_friday/controller/homescreencontroller.dart';
import 'package:task_friday/view/globalwidget/reuse.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await Provider.of<HomeScreenController>(context,listen: false).getProductData();
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final providerObj=Provider.of<HomeScreenController>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Provider.of<HomeScreenController>(context,listen: false).getProductData();
      
        
      },),appBar: AppBar(centerTitle: true,title: Text("FAST SALE",style:TextStyle(
        fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white,
      ) ,),backgroundColor:  Colors.black,),
      body:providerObj.isloading?Center(
        child: MyLoading(),
      ):
         ListView.builder(itemCount: providerObj.ProductList.length,itemBuilder: (context, index) => Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child: Container(decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),color: Colors.white
             ),height: 350,
              // child: ListTile(leading:Image.network(providerObj.ProductList[index].image??"") ,
              // title: Text(providerObj.ProductList[index].price.toString()),
              // subtitle: Text(providerObj.ProductList[index].title.toString()),
              // trailing: IconButton(onPressed:() {
                
              // }, icon: Icon(Icons.shopping_cart,color: Colors.black,)),
              
              
                    
                    
              child: Column(children: [
               Text( providerObj.ProductList[index].category.toString()),Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 150,width: 150,
                    child: Image.network(providerObj.ProductList[index].image??""),
                  ), Text( providerObj.ProductList[index].id.toString()),
                  
                  IconButton(onPressed:() {
                
              }, icon: Icon(Icons.shopping_cart,color: Colors.black,)),
                ],
              ),
                
               
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text( providerObj.ProductList[index].price.toString()),
                      
                      Text(providerObj.ProductList[index].title.toString()),
                      Text( providerObj.ProductList[index].description.toString(),style: TextStyle(
                        fontSize: 10
                      ),),
                      
                     
                     
                              
                    ]
                      ),
                )
                  ],
                )
              ,),
          ),
          ),
        ),));
        
     }
      
  }
