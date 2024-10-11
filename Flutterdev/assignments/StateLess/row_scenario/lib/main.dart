import "package:flutter/material.dart";

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{ 
  const MyApp({super.key});
  @override  
  Widget build(BuildContext context){  
    print("width : ${MediaQuery.of(context).size.width}");
    print("height : ${MediaQuery.of(context).size.height}");
    return MaterialApp(  
      home:Scaffold(  
        appBar:AppBar(  
          title:Text("Row Scenario"),
          centerTitle:true,
          backgroundColor:Colors.blue,
        ),
        body:Container(  
          height:MediaQuery.of(context).size.height,
          child:Row(  
            mainAxisAlignment:MainAxisAlignment.start,
            crossAxisAlignment:CrossAxisAlignment.start,
            children:[  
              Container(  
                height:150, 
                width:150, 
                color:Colors.green, 

              ),
              Container(  
                height:150, 
                width:150, 
                color:Colors.yellow,
              ),

            ]
          )     
                  
              
         )
          
        )
      );
    
  }
}