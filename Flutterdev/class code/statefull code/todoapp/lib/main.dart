import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: todoapp(),
    );
  }
}

class todoapp extends StatefulWidget {
  const todoapp({super.key});

  State createState() => _todoapp();
}

class _todoapp extends State {
  TextEditingController titleController=TextEditingController();
  TextEditingController descriptionController=TextEditingController();
  TextEditingController dateController=TextEditingController();

  List<TodoModel>todoCards=[
    TodoModel( 
        title:"Flutter",
        description:"Dart,OOP",
        date:"18 October,2024",
    ),
    TodoModel( 
        title:"Flutter",
        description:"Dart,OOP",
        date:"18 October,2024",
    ),TodoModel( 
        title:"Flutter",
        description:"Dart,OOP",
        date:"18 October,2024",
    ),
  ];
  List<Color>cardColorList=[ 
    const Color.fromRGBO(250,232,232,1),
    const Color.fromRGBO(232,237,250,1),
    const Color.fromRGBO(250,249,232,1),
    const Color.fromRGBO(250,232,250,1),
  ];
  void submit(bool doEdit,[TodoModel? todoObj]){
    if(titleController.text.trim().isNotEmpty&&descriptionController.text.trim().isNotEmpty&&dateController.text.trim().isNotEmpty){
      if(doEdit){
        todoObj!.title=titleController.text;
        todoObj.description=descriptionController.text;
        todoObj.date=dateController.text;
      }
      else{
        todoCards.add(
           TodoModel( 
            title:titleController.text,
            description:descriptionController.text,
            date:dateController.text,

           )
        );
      }
    }
    Navigator.of(context).pop();
    clearControllers();
    setState((){}); 
  }
  void clearControllers(){ 
           titleController.clear();
           descriptionController.clear();
           dateController.clear();
  }

  void showBottomSheet(bool doEdit,[TodoModel?todoObj]){
    showModalBottomSheet(  
      isScrollControlled:true,
      context:context,
      builder:(context){
        return Padding(  
          padding:EdgeInsets.only(  
            bottom:MediaQuery.of(context).viewInsets.bottom,
            top:12.0,
            right:12.0,
            left:12.0,
          ),
          child:Column(  
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize:MainAxisSize.min,
            children:[
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children:[
                  Text(  
                    "create Todo",
                    style:GoogleFonts.quicksand( 
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color:Colors.black,
                    ),
                  ),
                ],
              ),
              Text( 
                "title",
                style:GoogleFonts.quicksand(
                  fontWeight:FontWeight.w400,
                  fontSize:14,
                  color:const Color.fromRGBO(0,139,148,1.0)
                )

              )
            ]
          )
        )
      }

      );
    
  }

  Widget build(BuildContext conntext) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To-do List",
            style: GoogleFonts.quicksand(
              fontWeight: FontWeight.w700,
              fontSize: 26,
              color: Colors.white,
            )),
        backgroundColor: Color.fromRGBO(2, 167, 177, 1),
      ),
      body: 
      ListView.builder(  
        itemCount:10,
        itemBuilder:(context,index){
         child:Container( 

         ),
        }
      )
    );
  }
}
