import 'package:flutter/material.dart';
class CustomizedTextfield extends StatelessWidget {
  final TextEditingController mycontroller;
  final String? hinttext;
  final bool ispass;
  const CustomizedTextfield({super.key,required this.mycontroller,required this.hinttext,required this.ispass});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(10),child:TextField(
      controller: mycontroller,
      keyboardType: ispass?TextInputType.visiblePassword:TextInputType.text,

      obscureText: ispass,
      decoration: InputDecoration(
        suffixIcon:ispass? const Icon(Icons.remove_red_eye_rounded,color: Colors.black,):null,
        enabledBorder: OutlineInputBorder(borderSide:const  BorderSide(color:Color(0xffE8ECF4),width: 1),
        borderRadius: BorderRadius.circular(10)),
        focusedBorder:OutlineInputBorder(borderSide:const  BorderSide(color:Color(0xffE8ECF4),width: 1),
        borderRadius: BorderRadius.circular(10)), 
        hintText: hinttext,
        fillColor:const Color(0xffE8ECF4),
        filled: true,
      
        
       border:const  OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 1),
    ))));
  }
}