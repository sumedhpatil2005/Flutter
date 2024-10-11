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
          title:Text("Static List"),
          centerTitle:true, 
          backgroundColor:Colors.blue,
        ) ,
        body:ListView(  
          children:[  
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS22STm_OFS6SKvuKC6Jqv3TJbOZyPS9irm6w&s"),
            const Icon( 
              Icons.favorite, 
              color:Colors.red, 
            ),
            const Text("Good Morning World") ,         
          Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS22STm_OFS6SKvuKC6Jqv3TJbOZyPS9irm6w&s"),
          GestureDetector(  
            onTap:(){ 
              print("button pressed");
            },
            child:Container(  
              height:50, 
              color:Colors.red,
              child:const Text("press me"),
            )

          )
          ],
          
        )
      
      
      )
    );
    }
  }
  
