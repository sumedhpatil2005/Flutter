import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/painting.dart";
import "package:flutter/rendering.dart";
import "package:flutter/widgets.dart";
void main(){  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{  
  const MyApp({super.key});
  
  @override  
  Widget build(BuildContext context){  
    return MaterialApp(  
      debugShowCheckedModeBanner:false,
      home:shoes(),

      
    );
  }

}

class shoes extends StatefulWidget{  
@override
 State createState()=>_shoesState();

  
}

class _shoesState extends State{  
  @override  
  Widget build(BuildContext context){  
    return Scaffold(  
      appBar:AppBar(  
        title:const Text("Shoes ")
        
        ,
        actions:[Icon(Icons.shopping_cart),] 


              ),

      body: Column(  
      
        children: [ 
          Container( 
             alignment:Alignment.topCenter,
           // height:600,
            // width:400, 
            child:Image.network("https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",
            height: 350,
            fit: BoxFit.cover,
        
            ),
          ),
         Container( 
          padding:EdgeInsets.all(15), 
          
          alignment: Alignment.topLeft,
          child:const Text("Nike Air Force 1'07",style:TextStyle(fontSize:30,fontWeight:FontWeight.bold  ))),

          Container(  
            child:Row( 
              children:[
                Padding(padding:EdgeInsets.all(5)),
                ElevatedButton(onPressed:(){}, child:Text("Shoes",style:TextStyle(color:Colors.white)),style:ButtonStyle(backgroundColor:WidgetStatePropertyAll(Color.fromARGB(255,85,39,164)))),
                SizedBox(width:10),
                ElevatedButton(onPressed:(){},child:Text("FOOTWEAR",style:TextStyle(color:Colors.white)),style:ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 85, 39, 164)) )),
              ]
            )
        
          ),
          Container(  
            padding:EdgeInsets.all(10),
                                
            child:Text("with iconic style and legendary comfort the Af-1 was made to be worn on repeat this iterartion puts a fresh spin on the hoops classics with reflectibe",style:TextStyle(fontWeight:FontWeight.bold,fontSize:15, ),
            )
            ),
            SizedBox(height:10),
            Container(  
              child:Row(  
                children:[  
                  Padding(padding:EdgeInsets.all(8)),
                  Text("Quantity",style:TextStyle(fontSize:20,fontWeight:FontWeight.bold)),
                  SizedBox(width:10),
                  Icon(Icons.remove),
                  Container(
                    height:20,width:20,
                    child:Text("2"),decoration:BoxDecoration(border: Border.all(width: 1))),
                ]
              )
            ),

         //

        ]
      

      )
      );

         
          


    
  }

}
