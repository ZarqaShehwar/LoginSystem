import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_system/Connection%20Firebase/authentication.dart';
import 'package:login_system/customizedButton.dart';
import 'package:login_system/loginScreen.dart';
import 'package:login_system/textbutton.dart';
import 'package:login_system/textfield.dart';
import 'package:login_system/welcomeScreen%20.dart';
import 'package:login_system/widgets/snackbar.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController emailcontroller=TextEditingController();
  final TextEditingController usercontroller=TextEditingController();
  final TextEditingController passwordcontroller=TextEditingController();
  final TextEditingController confirmpassword=TextEditingController();
   void SignUp()async{
    String email = emailcontroller.text;
    String password = passwordcontroller.text;
    String user = usercontroller.text;
    String confirm = confirmpassword.text;
    print(confirm);
  
   
     String res = await FirebaseAuthentication().Signup(user, email, password, confirm);
     if(res=="Succes"){
      ShowSnackbar(res,  context);
     }
     else{
      ShowSnackbar(res, context);
     }

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context){
                    return  const WelcomeScreen();
                  }));
                }, icon: const Icon(Icons.arrow_back_ios_sharp)),
              )
            ),
           const  SizedBox(
              height: 8,
            ),

         const    Text("Hello! Register to get \nstarted ",
         style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
         CustomizedTextfield(mycontroller: usercontroller, hinttext: "Enter your name", ispass: false),
         CustomizedTextfield(mycontroller:emailcontroller , hinttext: "Enter Your Email", ispass: false),
         CustomizedTextfield(mycontroller: passwordcontroller, hinttext: "Enter your new password", ispass: true),
         CustomizedTextfield(mycontroller: confirmpassword, hinttext: "Enter your password", ispass: true),
         
         
        
         const SizedBox(
          height:10
         ),
         CustomizedButton(buttontext: "Register", buttoncolor: Colors.white, containercolor: Colors.black, onpressed: (){
          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
          //   return const LoginScreen();
          // }),
          //  );
          SignUp();
         }),
         Padding(padding: EdgeInsets.all(8),
         child: Row(
          children: [
            Container(
              height:1,
              width:MediaQuery.of(context).size.height*0.20,
              decoration: BoxDecoration(color: Colors.grey),
            
            ),
           const   Text("Or Login with",style: TextStyle(fontSize: 10,color: Colors.black),),
            Container(
              height:1,
              width:MediaQuery.of(context).size.height*0.15,
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
         ],
         
         ),),
       


          
        ],
      )))
    )));
  }
}