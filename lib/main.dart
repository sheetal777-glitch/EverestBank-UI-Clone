import "package:flutter/material.dart";
import 'login/loginscreen.dart';

void main(){
  return runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   int _currentindex=0;

   Color everestColor =Color.fromRGBO(100, 25, 16,1);

  @override
  Widget build(BuildContext context) {
    return MaterialApp
    (
      debugShowCheckedModeBanner: false,
     home: Scaffold
     ( backgroundColor: Colors.white70,
       appBar: AppBar
       ( 
         bottom: PreferredSize
         (
           child: Row
         (
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Image
             (image:AssetImage
             (
              "images/banklogo.png"
             ),
             width:350,
             height: 75,
             fit: BoxFit.cover,
             )
           ],
         ),
           preferredSize:Size.fromHeight(20.0)),
         centerTitle: true,
         backgroundColor: everestColor,
       ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
       floatingActionButton: FloatingActionButton
       (
         backgroundColor:everestColor,
         onPressed:(){},
         child:Icon(Icons.add,color: Colors.white,) ,
         ),
       bottomNavigationBar: BottomAppBar
       (  
      shape: CircularNotchedRectangle(),
      notchMargin:4,
      clipBehavior: Clip.antiAlias,
      child:BottomNavigationBar
       ( type: BottomNavigationBarType.fixed,
         onTap: (index){
           setState(() {
             _currentindex=index;
           });
         },
         currentIndex: _currentindex,
         items:
       const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.lock,color: Colors.black,),
            title: Text('Login',style: TextStyle(color: Colors.black,),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card,color: Colors.black,),
            title: Text('FonePay',style: TextStyle(color: Colors.black,),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on,color: Colors.black,),
            title: Text('Branches',style: TextStyle(color: Colors.black,),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_outline,color: Colors.black,),
            title: Text('Others',style: TextStyle(color: Colors.black,),),
          ),
        ],
       ),
       ),
       body: SafeArea
       (
         child: LoginScreen(),
       ),
     ), 
    );
  }
}
