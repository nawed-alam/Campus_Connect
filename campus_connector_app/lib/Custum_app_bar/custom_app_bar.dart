import 'package:flutter/material.dart';
Widget CustomAppBar(){
  return Stack(
    children: [
      Container( //This is for background color.
      width: 428,
      height: 225,
      decoration: BoxDecoration(
        color: Color(0xFF0E3C6E),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
    ),
    Positioned(   //notification icon is here.
      top: 41,
      left: 350,
      child: IconButton(
        onPressed: () {}, // Add your onPressed function here
        icon: Icon(Icons.notifications, color: Colors.white),
      ),
    ),
    Positioned( //This is the title
      top: 49,
      left: 37,
      child: SizedBox(
        width: 170,
        height: 28,
        child: const Text(
          'Find your own way',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
    Positioned(   //This is for subtitle.
      top: 85,
      left: 37,
      child: SizedBox(
        width: 200,
        height: 20,
        child: const Text(
          'Search in 600 colleges around!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.0,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    ),
    Align( // It is for implenting search bar.
      alignment: Alignment.topLeft,
      child: Container(
        margin: EdgeInsets.only(top: 145, left: 37),
        height: 53,
        width: 279,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search for colleges, schools...',
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search),
          ),
        ),
      ),
    ),
    Positioned(   // It is for voiceSearchButton.
      top: 145,
      left: 330,
      child: Container(
        height: 53,
        width: 55,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: IconButton(
          onPressed: () {
            
          }, // Add your onPressed function here
          icon: Icon(Icons.mic),
        ),
      ),
    )
    ],
  );
}