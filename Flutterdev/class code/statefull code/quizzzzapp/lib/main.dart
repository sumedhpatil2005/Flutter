import "package:flutter/material.dart";
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      debugShowCheckedModeBanner:false,
      home:QuizApp(),

    );
  }
}

class QuizApp extends StatefulWidget{
  const QuizApp({super.key});
  State createState() => _QuizAppState();
    
       
    }

class _QuizAppState extends State{
  List<Map> AllQuestion=[{
    "Question":"Who is the founder of Microsoft",
    "Options":["Mark Zuckerburg","Bill Gates","Steve Jobs","ELon Musk"],
    "CorrectAns":1,
  },
  {
    "Question":"Who is the founder of Apple",
    "Options":["Mark Zuckerburg","Bill Gates","Steve Jobs","ELon Musk"],
    "CorrectAns":2,
  },
  {
    "Question":"Who is the founder of Meta",
    "Options":["Mark Zuckerburg","Bill Gates","Steve Jobs","ELon Musk"],
    "CorrectAns":0,
  },
  {
    "Question":"Who is the founder of Tesla",
    "Options":["Mark Zuckerburg","Bill Gates","Steve Jobs","ELon Musk"],
    "CorrectAns":3,
  },

  ];
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text("QUIZZ APP",
        style:TextStyle(
         fontWeight: FontWeight.w900,
         fontSize:28,
         color: Colors.red,
        
        )
        ),
        centerTitle:true,
        backgroundColor:Colors.blue,
      ),
      body:Column(
        children:[
          const SizedBox(
            height:30,
          ),
        children:[
          const SizedBox(
            width:130,
          ),
        ]
      ],),
  
    

  
    );

  }
}

