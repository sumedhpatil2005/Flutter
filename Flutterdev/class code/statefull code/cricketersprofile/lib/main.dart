import "package:flutter/material.dart";

void main(){
  runApp(const CricApp());
}

class CricApp extends StatefulWidget{
  const CricApp({super.key});
  @override
  State createState()=> _CricApp();
}

class _CricApp extends State{
  List player = [
    "https://english.cdn.zeenews.com/sites/default/files/2023/04/21/1187374-dhonibhajji.jpg",
    "https://static.toiimg.com/thumb/msid-107585773,width-400,resizemode-4/107585773.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH4ogMhS7cIhyqU3rVUI9MriaP7RB0buHXmA&s",
    "https://bsmedia.business-standard.com/_media/bs/img/article/2022-03/15/full/1647365891-7103.jpg",
    "https://www.hindustantimes.com/static-content/1y/cricket-logos/players/virat-kohli.png"
  ];
  int index=0;
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar:AppBar(
          title : const Text("Cricketers Profile"),
          backgroundColor:Colors.blue,
          centerTitle:true,
          
        ),
        body:Center(
          child:SizedBox(
            height:800,
            width:800,
            child:Image.network(player[index])
          ),
        ),
        floatingActionButton:Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
                FloatingActionButton(
                  onPressed:(){
                    if(index>0){
                      index--;
                    }
                    else{
                      index=player.length-1;
                    }
                    setState((){});
                  }
                ),
                FloatingActionButton(
                  onPressed:(){
                    if(index<player.length-1){
                      index++;

                    }
                    else{
                      index=0;
                    }
                    setState((){});
                  }
                ),

          ] ),
      ),
    );
  }

}