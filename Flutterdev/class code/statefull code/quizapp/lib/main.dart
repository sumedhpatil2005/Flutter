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
      home:QuizApp(),
    );
    }
  }
  
  class QuizApp extends StatefulWidget{
    const QuizApp({super.key});
    State createState() => _QuizAppState();
  }

  class _QuizAppState extends State{
    List<Map> allQuestions=[{
        "question":"who is the founder of microsoft",
        "options":["Steve jobs","Bill Gates","Elon musk","Lary Page"],
        "correctAnswer":1,
      },
      {
        "question":"who is the founder of SpaceX",
        "options":["Steve jobs","Bill Gates","Elon musk","Lary Page"],
        "correctAnswer":2,
      },{
        "question":"who is the founder of Google",
        "options":["Steve jobs","Bill Gates","Elon musk","Lary Page"],
        "correctAnswer":3,
      },{
        "question":"who is the founder of Apple",
        "options":["Steve jobs","Bill Gates","Elon musk","Lary Page"],
        "correctAnswer":0,
      },{
        "question":"who is the founder of Meta",
        "options":["Mark Zuckerburg","Bill Gates","Elon musk","Lary Page"],
        "correctAnswer":0,
      },];
      
      int currentQuestionIndex = 0;
      @override
      Widget build(BuildContext context){
        
        return Scaffold(
          appBar:AppBar(
            title:const Text(
              "Quiz App ",
              style:TextStyle(
                fontSize:30,
                fontWeight:FontWeight.w900,
                color:Colors.amberAccent
              ),
            ),
            centerTitle:true,
            backgroundColor:Colors.blue,
        ),
        body:Column(
          children:[
            const SizedBox(
              height:30,
        ),
        Row(
          children:[
            const SizedBox(
              width:115,
            ),
            Text("Question : ${currentQuestionIndex+1}/${allQuestions.length} ",
            style:TextStyle(
                  fontSize:27,
                  fontWeight:FontWeight.w700,
            ),
            ),
          ],
        ),
          
        const SizedBox(
          height:50,
        ),
        SizedBox( 
          width:380,
          height:50,
          child:Text(
            allQuestions[currentQuestionIndex]["question"],
            style:const TextStyle(
              fontSize:25,
              fontWeight:FontWeight.w600,
              color:Colors.purple,
            ),         
          ),
        ),
          const SizedBox(
            height:25,
          ),
          SizedBox(
            height:50,
            width:350,
            child:ElevatedButton(
              onPressed:(){
              },
              child:Text(
                allQuestions[currentQuestionIndex]['options'][0],
                style:const TextStyle(
                  fontSize:20,
                  fontWeight:FontWeight.w500,
                ),
              ),
              
            ),
          ),
          const SizedBox(
            height:25,
          ),
          SizedBox(
            height:50,
            width:350,
            child:ElevatedButton(
              onPressed:(){},
              child:Text(
                allQuestions[currentQuestionIndex]['options'][1],
                style:const TextStyle(
                  fontSize:20,
                  fontWeight:FontWeight.w500,
                ),
              ),
            ),
          ),
          const SizedBox(
            height:25,
          ),
          SizedBox(
            height:50,
            width:350,
            child:ElevatedButton(
              onPressed:(){},
              child:Text(
                allQuestions[currentQuestionIndex]['options'][2],
                style:const TextStyle(
                  fontSize:20,
                  fontWeight:FontWeight.w500,
                ),
              ),
            ),
          ),
          const SizedBox(
            height:25,
          ),
          SizedBox(
            height:50,
            width:350,
            child:ElevatedButton(
              onPressed:(){},
              child:Text(
                allQuestions[currentQuestionIndex]['options'][3],
                style:const TextStyle(
                  fontSize:20,
                  fontWeight:FontWeight.w500,
                ),
              ),
            ),
          ),
          ]
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:(){
            if(currentQuestionIndex < allQuestions.length-1){
              currentQuestionIndex++;
              setState((){});
            }
          },
          backgroundColor:Colors.blue,
          child:const Icon(
            Icons.forward,
            color:Colors.white,
          ) 
          ),
        
        );
      }
  
      

  }

