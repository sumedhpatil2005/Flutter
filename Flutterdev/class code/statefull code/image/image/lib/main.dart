import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Imagescroll(),
    );
  }
}
class Imagescroll extends StatefulWidget{
  const Imagescroll({super.key});
  @override 
  State createState()=>_Imagescroll();
}

class _Imagescroll extends State{
  int index=0;
  List<Map> data=[{"Link":"https://images.inc.com/uploaded_files/image/1024x576/mark-zuckerberg-headshot-web_77358.jpg",
                    "options":["Elonmusk","BillGates","MarkZuckerberg","Chandu"],
                    "Correct":2,                 
                   
                  },
                  {
                    "Link":"https://static.independent.co.uk/s3fs-public/thumbnails/image/2018/09/30/00/elon-musk.jpg",
                    "options":["Elonmusk","BillGates","MarkZuckerberg","Chandu"],
                    "Correct":0,
                  },
                  {
                     "Link":"https://www.shutterstock.com/image-photo/milan-italynovember-18-2004-microsoft-600nw-247513390.jpg",
                     "options":["Elonmusk","BillGates","MarkZuckerberg","Chandu"],
                      "Correct":1,
          }          ];


  @override  
  Widget build(BuildContext context){
    var newMethod2 = newMethod();
    return Scaffold(
      appBar:AppBar(
        title: Text("Quiz"),
        centerTitle:true,
        backgroundColor:Colors.purple,
      ),
      body:Column(
        children: [
           SizedBox(
        
          height:30,
          
          

        ),
         
           SizedBox(
        
          height:400,
          width:400,
          child:Text(data[index]["options"][0])

        ),
       SizedBox(height:50),
        SizedBox(
          height:50,
          width:300,
          child:ElevatedButton(onPressed:(){},child:Text(data[index]["options"][0])),
        ),
        SizedBox(
          height:50,
          width:300,
          child:ElevatedButton(onPressed:(){},child:Text(data[index]["options"][1])),
        ),SizedBox(
          height:50,
          width:300,
          child:ElevatedButton(onPressed:(){},child:Text(data[index]["options"][2])),
        ),SizedBox(
          height:50,
          width:300,
          child:ElevatedButton(onPressed:(){},child:Text(data[index]["options"][3])),
        )

        ],
        
        
        
      
      )
      
      
         );

  }

  Map<dynamic, dynamic> newMethod() => data[index];
}   


 