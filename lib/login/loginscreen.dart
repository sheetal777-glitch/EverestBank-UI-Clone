import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Color everestColor =Color.fromRGBO(100, 25, 16,1);
  bool checkBoxState =false;
 
  @override
  Widget build(BuildContext context) {
    return ListView
    (
     children:
     [
      Column(
         children: 
         [
           Container
         (
           child: Carousel
           (
             images: [
               AssetImage("images/carousel1.jpg"),
               AssetImage("images/carousel2.jpg"),
               AssetImage("images/carousel3.jpg"),   
             ],
           ),
           width: double.maxFinite,
           height: 204,
         ),
           SizedBox
            (
         height:10,
            ),
           Container
           (
         padding: EdgeInsets.all(20),
         child:Column
         ( 
           crossAxisAlignment: CrossAxisAlignment.start,
           children:
           [
            Text("Mobile Number",
            style: TextStyle
            (
         fontWeight: FontWeight.bold
            ),
            ),
            SizedBox
            (
         height: 7,
            ),
            TextField
            (
         decoration: InputDecoration
         (
           
           border: OutlineInputBorder
           (
         borderRadius: BorderRadius.all
         (
           Radius.circular(10),
           )
           ),
         ),
            ),
            SizedBox
            (
         height:10,
            ),
            Text("Password",
             style: TextStyle
            (
         fontWeight: FontWeight.bold
            ),
            ),
            SizedBox
            (
         height: 7,
            ),
            TextField
            (
         decoration: InputDecoration
         (
           focusColor: everestColor,
           border: OutlineInputBorder
           (
         borderRadius: BorderRadius.all
         (
           Radius.circular(10),
           )
           ),
         ),
            ),
            Row(
         children: 
         [
           Checkbox
           (
         value:checkBoxState,
         activeColor: everestColor,
          onChanged: (bool value){
            setState(() {
              checkBoxState=value;
            }
            );
          }
           ),
           Text
           (
         "Remember Mobile Number",
          style: TextStyle
            (
         fontWeight: FontWeight.bold
            ),
           ),
         
         ],
            )
           ]
         ),
           ),
           RaisedButton
           (
          elevation: 10,
         padding: EdgeInsets.symmetric
         (
          vertical: 10,
          horizontal: 160,
         ),
         color: everestColor,
         onPressed: (){},
         child: Text
         (
           "Login",
           style: TextStyle
           (
             fontSize: 20,
             fontWeight:FontWeight.bold,
             color: Colors.white
           ),
         ),
            ),
            SizedBox
            (
          height: 20,
            ),
            Row
            ( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
          [
            Icon(Icons.fingerprint,
            size:30 ,
            ),
            SizedBox
            (
         width: 25,
            ),
            Text
            (
         "Tap here to sign in with your fingerprint",
         style:TextStyle
         (
           fontWeight: FontWeight.bold,
         ) ,
            ),
           ],
         ),
            Divider
            ( 
         color:everestColor,
         thickness: 1,
         height: 50,
            ),
            Row
            (
         mainAxisAlignment: MainAxisAlignment.center,
         children: 
         [
           Text(
         "Having trouble signing in?",
         style: TextStyle
         (
           fontWeight: FontWeight.bold
         ),
         ),
           Text(
         "Tap here",
         style: TextStyle
         (
           fontWeight: FontWeight.bold,
           decoration: TextDecoration.underline,
         ),
           )
         ],
            ),
            Divider
            ( 
         color:everestColor,
         thickness: 1,
         height: 50,
            ),
            Container
            (
         child: Column
         (
           children: 
           [
         Row
         (
           mainAxisAlignment: MainAxisAlignment.center,
           children: 
           [
             Text
             (
               "Connect with us",
               style:TextStyle
               (
        fontWeight: FontWeight.bold,
        fontSize: 20,
               ),
             )
           ],
         ),
         SizedBox(
           height: 20,
         ),
         Row
         (
           children: 
           [
             Expanded(child: FlatButton
             (onPressed:(){}, 
             child:Image
             (image: AssetImage
             ("images/facebook.png")
             ,
             fit:BoxFit.cover,
             height: 50,
             width:50)
             ,)
             ,),
             Expanded(child: FlatButton(onPressed:(){}, child:Image(image: AssetImage("images/twitter.png"), height: 50,
             width:50),)),
             Expanded(child: FlatButton(onPressed:(){}, child:Image(image: AssetImage("images/insta.png"), height: 50,
             width:40),)),
             Expanded(child: FlatButton(onPressed:(){}, child:Image(image: AssetImage("images/youtube.png"), height: 50,
             width:70),)),
             
           ],
         ),
         SizedBox(
           height: 30,
         ),
         
           ],
         ),
            )
          ],
      ),
     ],
    );
  }
}