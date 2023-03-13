 import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_system/customizedButton.dart';
import 'package:login_system/loginScreen.dart';
import 'package:login_system/textfield.dart';
 class ForgotPassword extends StatefulWidget {
   const ForgotPassword({super.key});
 
   @override
   State<ForgotPassword> createState() => _ForgotPasswordState();
 }
 
 class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController emailcontroller=TextEditingController();
   @override
   Widget build(BuildContext context) {
     return Scaffold(
      body:SingleChildScrollView(child:SafeArea(child:  Container(
        height:MediaQuery.of(context).size.height,
        width:double.infinity,
        
        child:Padding(padding: EdgeInsets.all(10),child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child:Container(
              height:50,
              width:50,
              decoration:BoxDecoration(
                border:Border.all(color: Colors.black,width:1 ),
                borderRadius: BorderRadius.circular(10)),
                child:IconButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                    return const LoginScreen();
                  }));
                }, icon: const Icon(Icons.arrow_back_ios_sharp)),
              )
            ),
            const  SizedBox(
              height: 8,
            ),

         const    Text("Recover Password ",
         style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
       
         CustomizedTextfield(mycontroller:emailcontroller , hinttext: "Enter Your Email", ispass: false),
        const  SizedBox(height: 8,),
        CustomizedButton(buttontext: "Send Code", buttoncolor:Colors.white ,
         containercolor:Colors.black , onpressed: (){}),
          Padding(padding: EdgeInsets.all(8),
         child: Row(
          children:[
            Container(
              height:1,
              width:MediaQuery.of(context).size.height*0.15,
              decoration: BoxDecoration(color: Colors.grey),
            
            ),
           const   Text("Or Login with",style: TextStyle(fontSize: 8,color: Colors.black),),
            Container(
              height:1,
              width:MediaQuery.of(context).size.height*0.17,
              decoration:BoxDecoration(color:Colors.grey)
            
            ),
          ],
         ),),
         Padding(padding: EdgeInsets.all(8),
         child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
          Container(
            height:50,
            width: 50,
            decoration: BoxDecoration(
              border:  Border.all(color: Colors.black,width: 1,),
              borderRadius: BorderRadius.circular(10),
            ),
            child:IconButton(onPressed: (){}, icon:const Icon(FontAwesomeIcons.facebookF,color: Colors.blue,
            )),
          ),
           Container(
            height:50,
            width: 50,
            decoration: BoxDecoration(
              border:  Border.all(color: Colors.black,width: 1,),
              borderRadius: BorderRadius.circular(10),
            ),
            child:IconButton(onPressed: (){}, icon:const Icon(FontAwesomeIcons.google,
            )),
          ),
           Container(
            height:50,
            width: 50,
            decoration: BoxDecoration(
              border:  Border.all(color: Colors.black,width: 1,),
              borderRadius: BorderRadius.circular(10),
            ),
            child:IconButton(onPressed: (){}, icon:const Icon(FontAwesomeIcons.apple
            )),
          ),
         ]))]))))));
         
      

        
   }
 }