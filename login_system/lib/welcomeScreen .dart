import 'package:flutter/material.dart';
import 'package:login_system/customizedButton.dart';
import 'package:login_system/loginScreen.dart';
import 'package:login_system/register.dart';
import 'package:login_system/textbutton.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child: 
    Container(
      height:MediaQuery.of(context).size.height,
      width:double.infinity,
      decoration:
      const  BoxDecoration(image:
      DecorationImage(image:
       AssetImage("assets/images/img (1).png"),fit:BoxFit.cover) ),
       child:Padding(padding:const EdgeInsets.symmetric(vertical: 10),
       child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        
        children: [
        
          const SizedBox(height:120,
          width:180,
          child:Image(image: AssetImage("assets/images/Branding.png"),fit:BoxFit.cover ,),),
          const SizedBox(
            height:20
          ),
          CustomizedButton(buttontext: "Log In",
          buttoncolor: Colors.white,
          containercolor: Colors.black,
          onpressed: () {   Navigator.pushReplacement(context, MaterialPageRoute(builder:
           (context){
            return const  LoginScreen();
              

            }));

 },),const SizedBox(
            height:20
          ),
          CustomizedButton(buttontext: "Register",
          buttoncolor: Colors.black,
          containercolor: Colors.white,
          onpressed: () {   Navigator.pushReplacement(context, MaterialPageRoute(builder:
           (context){
            return const  RegisterScreen();
              

            }));

 },),
 const SizedBox(
  height:60,
  
 ),
 Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
 
 const Text("Continue as a",style: TextStyle(color:Color.fromARGB(255, 68, 255, 255)),),
 TextButton1(onPressed: (){}, text: "Guest",textcolor: const  Color.fromARGB(255, 63, 181, 175),)

          
          

        ],),
       ]),
    )
     ) ));
  }
  }
