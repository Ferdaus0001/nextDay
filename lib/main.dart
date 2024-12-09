import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/homeScreen.dart';

import 'models/card.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

     return MaterialApp(

       debugShowCheckedModeBanner: false,
       home: InvoicePage(

       ),
     )
     ;
  }

}