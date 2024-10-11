import "package:flutter/material.dart";
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override  
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner:false,
      home:toggle(),
   );
  }
}

class toggle extends StatefulWidget{
 
 const  toggle({super.key});
  @override  
    State createState() => _toggleState();  
}

class _toggleState extends State{  
  bool val=false;

  @override  
  Widget build(BuildContext context){
    return Scaffold(  
      appBar:AppBar(  
          title:const Text("Toggle App"), 
          centerTitle:true,
          backgroundColor:val ?Colors.blue :Colors.red,
      ),
      body:Center(  
        child:Container( 
          height:200,
          width:200,
          color: val ?Colors.red:Colors.blue,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){ 
          if(val==true){ 
            val=false;
          }
          else{ 
            val=true;
          }
          setState((){});
        },
        backgroundColor:Colors.blue,
        child:const Icon(Icons.arrow_circle_right_rounded),
      ),
    );
  }

}