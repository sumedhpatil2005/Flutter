import "package:flutter/material.dart";
void main(){
  runApp( const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override  
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Quiz(),
    );
  }
}

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State createState()=>_Quiz();
}

class _Quiz extends State{

List<Map> allQuestions =[
  {
    "questions":"How many years are there in one Millenium",
    "options":["100","1000","500","2000"],
    "correctAnswers":1
  },
  {
    "questions":"How many union teritories in India",
    "options":["6","7","10 ","8"],
    "correctAnswers":3
  },
  {
    "questions":"Name the longest river on Earth",
    "options":["Nile","Thames","Ganga ","Yamuna"],
    "correctAnswers":0
  },
  {
    "questions":"Name the smallest Continent",
    "options":["Europe","Asia","Australia ","Africa"],
    "correctAnswers":2
  },
];
int currentQuestionIndex=0;
int selectedAnswerIndex=-1;
int score=0;

WidgetStateProperty<Color?> checkAnswer(int answerIndex){
  if(selectedAnswerIndex != -1){
    if(answerIndex==allQuestions[currentQuestionIndex]["correctAnswers"]){
                  
      return const WidgetStatePropertyAll(Colors.green);

    }
    else if(selectedAnswerIndex == answerIndex){
      return const WidgetStatePropertyAll(Colors.red);
    }
    else{
      return const WidgetStatePropertyAll(null);
    }

  }
  else{
    return const WidgetStatePropertyAll(null);
  }
}
bool questionPage=true;
  @override
    Widget build(BuildContext context){
      return isQuestionScreen();
    }
    Scaffold isQuestionScreen(){
      if(questionPage ==true){
        return Scaffold(
          backgroundColor: Color.fromARGB(217, 118, 113, 113),
          appBar:AppBar(
            
            title:const Text(
              "Quiz App",
              style:TextStyle(
                fontSize:40,
                fontWeight:FontWeight.w900,
                color:Colors.white,
              ),
              ),
              centerTitle:true,
              backgroundColor:Color.fromARGB(255, 142, 127, 215),
          ),
          body:
           
          Column(
            children:[
              const SizedBox(
                height:20,
              ),
              Row(
                children:[
                  const SizedBox(
                    width:115,
                  ),
                  Text(  
                    "Question:${currentQuestionIndex+1}/${allQuestions.length}",
                    style: const TextStyle( 
                      fontSize:28,
                      fontWeight:FontWeight.w700,
                    )
                  ) 
            ],
              ),
          
          const SizedBox( 
            height:30,
          ),
          SizedBox(  
            width:380,
            height:70,
            child:Text(
              allQuestions[currentQuestionIndex]["questions"],
              style:const TextStyle( 
                fontSize:25,
                fontWeight:FontWeight.w600,
                color:Color.fromARGB(255, 1, 1, 1),
              ),

            ),
          ),
          const SizedBox(
            height:50,
          ),
           SizedBox(  
            height:50,
            width:350,
            child:ElevatedButton(  
              style:ButtonStyle(  
                backgroundColor:checkAnswer(0),
              ),
              onPressed:(){ 
                if(selectedAnswerIndex==-1){ 
                  selectedAnswerIndex=0;
                   setState((){});
                 
                }
                 if(selectedAnswerIndex== allQuestions[currentQuestionIndex]['correctAnswers']){
                    score++;
                    setState((){});

                  }
              },
              child:Text(  
                "A. ${allQuestions[currentQuestionIndex]['options'][0]}",
                style:const TextStyle(  
                  fontSize:20, 
                  fontWeight:FontWeight.w500,
                  color:Colors.black,
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
            child: ElevatedButton( 
              style:ButtonStyle(  
                backgroundColor:checkAnswer(1),
              ),
              onPressed:(){
                if(selectedAnswerIndex==-1){ 
                  selectedAnswerIndex=1;
                   setState((){});
                }
                  if(selectedAnswerIndex== allQuestions[currentQuestionIndex]['correctAnswers']){
                    score++;
                    setState((){});

                  }
                
              },
              child:Text(  
                "B. ${allQuestions[currentQuestionIndex]['options'][1]}",
                style:const TextStyle(  
                  fontSize:20,
                  fontWeight:FontWeight.w500,color:Colors.black,
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
              style:ButtonStyle( 
                backgroundColor:checkAnswer(2),
              ),
              onPressed:(){
                if(selectedAnswerIndex==-1){
                  selectedAnswerIndex=2;
                   setState((){});
                }
                 
                   if(selectedAnswerIndex== allQuestions[currentQuestionIndex]['correctAnswers']){
                    score++;
                    setState((){});

                  }

                
              },
              child:Text(  
                "C. ${allQuestions[currentQuestionIndex]['options'][2]}",
                style:const TextStyle(  
                  fontSize:20,
                  fontWeight:FontWeight.w500,
                  color:Colors.black,
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
              onPressed:(){ 
                if(selectedAnswerIndex == -1){
                  selectedAnswerIndex=3;
                   setState((){});
                }
                   if(selectedAnswerIndex== allQuestions[currentQuestionIndex]['correctAnswers']){
                    score++;
                    setState((){});

                  }
                
              },
              style:ButtonStyle(  
                backgroundColor:checkAnswer(3), 
              ),
              child:Text(  
                "D. ${allQuestions[currentQuestionIndex]['options'][3]}",
                style:const TextStyle(  
                  fontSize:20,
                  fontWeight:FontWeight.w500,
                  color:Colors.black,
                ),
              ),
            ),
          ),
            ],
          ),
          
        floatingActionButton:FloatingActionButton(
          onPressed:(){
            if(selectedAnswerIndex!=-1){
              if(currentQuestionIndex<allQuestions.length-1){
                currentQuestionIndex++;
              }
              else{ 
                questionPage=false;
              }
              selectedAnswerIndex=-1;
              setState((){});
            }
          },
          backgroundColor:Colors.blue,
          child:const Icon( 
            Icons.forward,
            color:Colors.white,
          ),
        ),
        );
      }else{ 
        return Scaffold(
          backgroundColor: Color.fromARGB(217, 118, 113, 113),
          appBar:AppBar(

            title:const Text(
              "Quiz Result",
              style:TextStyle(
                fontSize:28,
                fontWeight:FontWeight.w900,
                color:Colors.white,
              ),

            ),
            centerTitle:true,
            backgroundColor:Color.fromARGB(255, 142, 127, 215),
          ),
          body:Center(  
            child:Column(
              mainAxisAlignment:MainAxisAlignment.center,
              children:[
                Image.network("https://img.freepik.com/free-vector/trophy_78370-345.jpg",
                height:300,
                ),const SizedBox(height:30),
                const Text("Congratulations",
                style:TextStyle(
                fontSize:30,
                fontWeight:FontWeight.w900,
                color:Colors.orange,

                ),
                ),
                const SizedBox(height:30),
                // ignore: unnecessary_brace_in_string_interps
                 Text("Score: ${score} /${allQuestions.length}",
                 style:TextStyle(
                  fontSize:25, 
                  color:Colors.red,
                  fontWeight: FontWeight.w600, 
                 ) ,),
                ],

            ),
          ),
          
        );
      }
    }
}
