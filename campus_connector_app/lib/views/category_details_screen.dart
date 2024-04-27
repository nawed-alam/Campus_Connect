import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'Category_Screen.dart';
Widget CategoryDetailsScreen(
    String text1,
    String text2,
    String imageUrl,
    String text3,
    String text4,
    BuildContext context,
    ValueChanged<String> onSelected) {
  List<String> degrees = [
    'Bachelor of Technology',
    'Bachelor of Architecture',
    'Pharmacy',
    'Law',
    'Management'
  ];
  Map<String, String> degreeImages = {
  'Bachelor of Technology': 'assets/images/edu.png',
  'Bachelor of Architecture': 'assets/images/sketch.png',
  'Pharmacy': 'assets/images/pharmacy.png',
  'Law': 'assets/images/balance.png',
  'Management': 'assets/images/management.png',
};
  String selectedDegree = degrees.first;
  return Padding(
    padding: const EdgeInsets.only(left: 16, right: 12),
    child: Column(
      children: [
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Sort By',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Spacer(), // Add space between title and close icon
                          IconButton(
                            icon: Icon(Icons.close, size: 25),
                            onPressed: () => Navigator.pop(
                                context), 
                          ),

                          // Separator line mtlb custom 
                        ],
                      ),
                      Container(
                        //padding: const EdgeInsets.all(16.0),
                        width: MediaQuery.of(context).size.width,
                        height: 1.5,
                        color: Colors.grey, // Set a light background color
                        //child: SingleChildScrollView(
                        // ... your existing content
                        //),
                      ),
                      // ),
                      SizedBox(
                          height: 15), // Add spacing between title and list

                      // List of degrees
                      Column(
                        children: degrees.map((degree) {
                          return GestureDetector(
                            onTap: () {
                              onSelected(degree);
                    Navigator.pop(context);

                    // Navigate to another screen here
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CategoryScreen(),
                      ),// Close the bottom sheet
                           ); },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Row(
                                children: [
                                  // Photo
                                  Container(
                                    width: 40,
                                    height: 40,
                                    child: Image.asset(
                                        degreeImages[degree] ??'assets/images/nawed.jpg'), // Replace with your image
                                  ),
                                  10.widthBox, // Add spacing between image and text

                                  // Degree Text
                                  Text(
                                    degree,
                                    style: TextStyle(fontSize: 17),
                                  ),

                                  Spacer(), // Add space between text and icon

                                  // Selected degree indicator (adjust style as needed)
                                  selectedDegree == degree
                                      ? Icon(
                                          Icons
                                              .check_circle, // Use check_circle for better visibility

                                          color: Color(0xFF0E3C6E),
                                        )
                                      : Icon(Icons.circle_outlined),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            );
          },
          child: Stack(
            //alignment: Alignment.bottomRight,
            children: [
              Container(
                height: 158,
                width: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imageUrl),
                    fit: BoxFit.fill,
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    text1.text.size(22).bold.color(Colors.white).make(),
                    SizedBox(height: 10),
                    text2.text.size(14).color(Colors.white).make(),
                  ],
                ),
              ),
              Positioned(
                bottom: 5, // Adjust bottom padding as needed
                right: 20, // Adjust right padding as needed
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      text3,
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    3.widthBox,
                    Text(
                      text4,
                      style: TextStyle(
                        fontSize: 8,
                        color: Colors.black,
                        // fontWeight:FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
