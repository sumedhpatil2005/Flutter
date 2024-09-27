import "package:flutter/material.dart";

void main(){

  runApp(const countApp());
}

class countApp extends StatefulWidget{
  const countApp({super.key});
  @override
  State createState()=>_countApp();
}

class _countApp extends State{
  int count=0;
  @override
    Widget build(BuildContext context){
    return MaterialApp(
      home : Scaffold(
        appBar:AppBar(
          title:const Text("Counter Application"),
          centerTitle:true,
          backgroundColor:Colors.blue,
        ),
         body : Center(child :Text("$count")),
         floatingActionButton : FloatingActionButton(
          onPressed:(){
            count++;
            setState((){});
          },
          backgroundColor:Colors.red,
          child:const Icon(Icons.cabin)
          
         ),

        
      ),

    );
  }
}