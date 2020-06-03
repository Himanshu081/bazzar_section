import 'package:flutter/material.dart';


Widget buildLoadingUI(){
  return Center(
    child: CircularProgressIndicator(),
  );
}

Widget buildErrorUI(String message) {
  return Center(
    child:Text(message,style:TextStyle(color: Colors.red,fontSize:13.0))
  );
}