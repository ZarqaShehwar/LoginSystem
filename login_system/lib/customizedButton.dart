import 'package:flutter/material.dart';
class CustomizedButton extends StatelessWidget {
  final String buttontext;
  final Color? buttoncolor;
   final Color? containercolor;
   final VoidCallback?onpressed;
  
  const CustomizedButton({super.key,required this.buttontext,required this.buttoncolor,required this.containercolor,required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Padding(padding:const  EdgeInsets.symmetric(horizontal: 10),
    child:InkWell(
      onTap: onpressed,
      child:Container(
        height:70,
        width:500,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: containercolor,
          border: Border.all(color: Colors.black,width: 1.0),borderRadius: BorderRadius.circular(10),
          
        ),
        child:Text(buttontext,style: TextStyle(color: buttoncolor,fontSize: 14,fontWeight:FontWeight.bold),)
        
      ),)
    );
  }
}