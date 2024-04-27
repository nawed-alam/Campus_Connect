import 'package:campus_connector_app/views/category_details_screen.dart';
import 'package:flutter/material.dart';

Widget HomeScreenDetails(BuildContext context) {
  return Positioned(
    //top: MediaQuery.of(context).size.height * 0.2, // Adjust the top position as needed
    left: 45,
    right: 45,
    child: Column(
      children: [
        CategoryDetailsScreen(
          'Top Colleges',
          'Search through thousands of accredited colleges and universities online to find the right one for you.  Apply in 3 min, and connect with your future.',
          'assets/images/College.png',
          '+126',
          'Colleges',
          context,
          (selectedDegree) {
            // Handle the selected degree for colleges here
            print('Selected degree for colleges: $selectedDegree');
          },
        ),
        SizedBox(height: 15),
        CategoryDetailsScreen(
          'Top Schools',
          'Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out the schools that are fit for you.',
          'assets/images/School.png',
          '+106',
          'Schools',
          context,
          (selectedDegree) {
            // Handle the selected degree for colleges here
            print('Selected degree for colleges: $selectedDegree');
          },
        ),
        SizedBox(height: 15),
       CategoryDetailsScreen(
          'Exams',
          'Find an end to end information about the exams that are happening in India',
          'assets/images/Exams.png',
          '+16',
          'Exams',
          context,
          (selectedDegree) {
            // Handle the selected degree for colleges here
            //print('Selected degree for colleges: $selectedDegree');
          },
        ),
      ],
    ),
  );
}