import 'package:flutter/material.dart';
class TextButton1 extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color? textcolor;
  const TextButton1({super.key,required this.text,required this.onPressed, required this.textcolor});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPressed,
    
    
    child: Text(text,style: TextStyle(color:textcolor,fontSize: 12),));
  }
}