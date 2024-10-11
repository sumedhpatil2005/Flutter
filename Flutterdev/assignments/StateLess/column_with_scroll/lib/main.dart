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
          title:Text("COLUMN SCROLL"), 
          centerTitle:true, 
          backgroundColor:Colors.blue,
         ),
         body:SingleChildScrollView( 
         
            child:Column(
             children:[
              Image.network("https://media.istockphoto.com/id/1371940128/photo/multiracial-friends-taking-big-group-selfie-shot-smiling-at-camera-laughing-young-people.jpg?s=612x612&w=0&k=20&c=FPs-C92zbN6RkHnPG4Fl9zyP2-HZWGy9Prdt46Yn-IY="),
             
                Container(  
            
                height:30,
                color:Colors.amber,
              ),
              Image.network("https://images.unsplash.com/photo-1511988617509-a57c8a288659?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHNvY2lhbCUyMGdyb3VwfGVufDB8fDB8fHww"),
              Container(  
               
                height:30,
                color:Colors.amber,
              ),Image.network("https://thumbs.dreamstime.com/b/happy-cheerful-african-millennial-man-looking-camera-home-american-face-head-shot-smiling-young-black-single-guy-136500293.jpg"),
              Container(  
                
                height:30,
                color:Colors.amber,
              ),Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZp17NL-Px4WtZiBTzOfkrBfqjZXwPRcmBkQ&s"),
              Container(  
                
                height:30,
                color:Colors.amber,
              ),Image.network("https://e1.pxfuel.com/desktop-wallpaper/1001/1007/desktop-wallpaper-75-man-standing-single-person.jpg"),
              Container(  
               
                height:30,
                color:Colors.amber,
              ),
             ]
            ),
              
          ),
            
            
         )  

            
      );
    
  }
}