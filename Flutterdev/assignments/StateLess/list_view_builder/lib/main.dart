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
            title:Text("List Builder"), 
            centerTitle:true, 
            backgroundColor:Colors.blue, 
          ),
          body:ListView.builder(  
            itemCount:30, 
            physics:const BouncingScrollPhysics(), 
            itemBuilder:(BuildContext context,int index){ 
                    return Image.network("https://static.thenounproject.com/png/349793-200.png" 
                    
                    );
            }
                 )
      )
    );
  }
}