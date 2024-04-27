import 'package:campus_connector_app/models/navbar_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget  BottomNavigatorBar( )
        {
           var currentNavIndex = 0.obs;
          return BottomNavigationBar(
          currentIndex: currentNavIndex.value,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(0.6),
          showSelectedLabels: true,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xFF0E3C6E),
          items: navbarItem,
          onTap: (value) {
            currentNavIndex.value = value;
            //print("1");
          },
        );
        }
    