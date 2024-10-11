import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
void main(){ 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{  
  const MyApp({super.key});
  @override  
   
  Widget build(BuildContext context){ 
  print("Device Width : ${MediaQuery.of(context).size.width}");
  print("Device height ${MediaQuery.of(context).size.height}");
    return MaterialApp(  
      home:Scaffold(  
        appBar:AppBar(  
          title:const Text("Column_scenarios"),
          backgroundColor:Colors.blue,
          centerTitle:true,
        ),
      body:Container(  
        width:MediaQuery.of(context).size.width,
        color:Colors.red,
        child:Column(  
          mainAxisAlignment:MainAxisAlignment.end,
          crossAxisAlignment:CrossAxisAlignment.start,
          
           children:[  
            Container(  
              height:200,
              width:200, 
              color:Colors.amber,
            )
          ]
        )


      )
      )
    );
  }
}
