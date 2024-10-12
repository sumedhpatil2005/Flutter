import "package:flutter/material.dart";

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override  
  Widget build(BuildContext context){
    return MaterialApp(  
      home:Scaffold(
        appBar:AppBar(  
          title:Text("IndianFlag"),
          centerTitle:true,
          backgroundColor:Colors.blue,
        ) ,
        body:Center(  
          
          child:Column(  
            mainAxisAlignment:MainAxisAlignment.center,
            children:[  
              Container(  
                height:55,
                width:200,
                color:Colors.orange,              
              ),
              Container(  
                height:55,
                width:200,
                color:Colors.white,
                child:Image.network("https://www.shutterstock.com/shutterstock/photos/2473479327/display_1500/stock-vector-accurate-symbol-of-the-ashoka-chakra-isolated-on-a-transparent-background-buddhist-symbolism-2473479327.jpg"),
              ),
              Container(  
                height:55,
                width:200,
                
                color:Colors.green,
              )

            ]
          )
        )
        )

          );

       
      
  }
}