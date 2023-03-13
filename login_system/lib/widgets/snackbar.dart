import 'package:flutter/material.dart';

void ShowSnackbar(content,context){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(content) ));
}