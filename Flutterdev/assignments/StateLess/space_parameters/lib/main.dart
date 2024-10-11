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
          title:Text("Space Evenly"),
          centerTitle:true,
          backgroundColor:Colors.blue,
        ), 
        body:Column(  
          mainAxisAlignment:MainAxisAlignment.start,
          children: [Container(  
            height:300,
            width:300,
            color:Colors.blue,
          ),
          Container(  
            height:300,
            width:300,
            color:Colors.red,
          ),
          
          ]
        )
      ),
    );
  }  

}