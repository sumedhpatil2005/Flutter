import "package:flutter/material.dart";

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      home:Scaffold(  
        appBar:AppBar(  
          title: const Text("Basic App"),
        ),
        body:Center(  
          child:Row(  
            children:[  
              Container(  
                height:100,
                width:100,
                color:Colors.red,
              ),
              Container(  
                height:100,
                width:100,
                color:Colors.blue,
              ),
              Container(  
                height:100,
                width:100,
                color:Colors.orange,
              ),
            ]
          )
        )
      )
    );

  }
}