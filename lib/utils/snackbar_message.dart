import 'package:flutter/material.dart';

SnackBar showSnackBar(BuildContext context, String message) {
  return SnackBar(
    content: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          message,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    backgroundColor: Color(0xFF23286B),
    duration: Duration(milliseconds: 1500),
    behavior: SnackBarBehavior.floating,
    // width: MediaQuery.of(context).size.width*0.7,
  );
}