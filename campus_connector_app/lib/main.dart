import 'package:campus_connector_app/Custum_app_bar/custom_app_bar.dart';
import 'package:campus_connector_app/home_screen/bottom_navigation_bar.dart';
import 'package:campus_connector_app/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CampusConnector',
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              child:CustomAppBar(),
          ),
          SizedBox(height: 20),
          HomeScreenDetails(context),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigatorBar(),
      ),
    );
  }
}

  