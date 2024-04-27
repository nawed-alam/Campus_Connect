import 'package:campus_connector_app/Custum_app_bar/Custom_Container.dart';
import 'package:campus_connector_app/views/Item_details.dart';
import 'package:campus_connector_app/home_screen/bottom_navigation_bar.dart';
import 'package:campus_connector_app/models/models.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  int selectedIndex = 0; // Track the currently selected image index

  @override
  Widget build(BuildContext context) {
    var currentNavIndex = 0.obs;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  Container(
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
                  Align(
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
                  Positioned(
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
                        onPressed: () {}, // Add your onPressed function here
                        icon: Icon(Icons.mic),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: List.generate(studentReviews.length, (index) {
                    final review = studentReviews[index];
                    return GestureDetector(
                      onTap: () => setState(() => selectedIndex = index),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 40,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: review.str!.text.makeCentered(),
                          ),
                        )
                            .box
                            .roundedSM
                            .border(color: Colors.grey)
                            .clip(Clip.antiAlias)
                            .outerShadowSm
                            .make(),
                      ),
                    );
                  }),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ItemsDetails()),
                      );
                    },
                    child: CustomContainer(context,'assets/images/college3.png')
                  ),
                ],
              ),
            )
                .box
                .rounded
                .border(color: Colors.grey)
                .clip(Clip.antiAlias)
                .outerShadowSm
                .make(),
                15.heightBox,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ItemsDetails()),
                      );
                    },
                    child: CustomContainer(context,'assets/images/college2.png')
                  ),
                ],
              ),
            )
                .box
                .rounded
                .border(color: Colors.grey)
                .clip(Clip.antiAlias)
                .outerShadowSm
                .make(),
                 15.heightBox,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ItemsDetails()),
                      );
                    },
                    child: CustomContainer(context,'assets/images/college2.png'),
                  ),
                ],
              ),
            )
                .box
                .rounded
                .border(color: Colors.grey)
                .clip(Clip.antiAlias)
                .outerShadowSm
                .make(),
            20.heightBox,
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigatorBar(),
      ),
    );
  }
}
