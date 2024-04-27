import 'dart:ui';

import 'package:campus_connector_app/models/models.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class StudentReview {
  String? name;
  double? rating;
  String? imageUrl;
  String? review;

  StudentReview({
    this.name,
    this.rating,
    this.imageUrl,
    this.review,
  });
}

List<String> images = [
  "assets/images/hostel1.png",
  "assets/images/hostel2.png",
  "assets/images/hostel1.png",
  "assets/images/hostel2.png",
  "assets/images/hostel1.png",
  "assets/images/hostel2.png",
];

// Define your list of StudentReviews here. Ensure each student has a unique image URL.

class ItemsDetails extends StatefulWidget {
  final int? initialIndex = 0; // Pass the initial index for the image list

  ItemsDetails();
  @override
  State<ItemsDetails> createState() => _ItemsDetailsState();
}

class _ItemsDetailsState extends State<ItemsDetails> {
  int selectedIndex = 0; // Track the currently selected image index

  @override
  void initState() {
    super.initState();
    //selectedIndex = widget.nitialIndex; // Set initial index based on passed value
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'GHJK Engineering',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        backgroundColor: Color(0xFF0E3C6E),
        leadingWidth: 90,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back_outlined, color: Color(0xFF0E3C6E)),
            ),
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 8),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              padding: EdgeInsets.all(4),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.bookmark_border, color: Colors.black),
              ),
            ),
          ),
        ],
        toolbarHeight: 83,
      ),
      body: DefaultTabController(
        length: 4,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/college1.png',
                  height: 200,
                  width: 428,
                  fit: BoxFit.fill,
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          'GHJK Engineering College'
                              .text
                              .size(20)
                              .bold
                              .color(Colors.black)
                              .make(),
                          SizedBox(height: 10),
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis consectetur nulla pharetra praesent hendrerit vulputate viverra. Pellentesque aliquam tempus faucibus est.'
                              .text
                              .size(12)
                              .color(Colors.black)
                              .make(),
                        ],
                      ),
                    ),
                    SizedBox(width: 12),
                    Container(
                      width: 52,
                      height: 74,
                      color: Colors.green,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '4.5',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 20,
                          ),
                        ],
                      ),
                    )
                        .box
                        .roundedSM
                        .white
                        .clip(Clip.antiAlias)
                        .outerShadowSm
                        .make(),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: TabBar(
                    isScrollable: true,
                    tabs: [
                      Tab(
                        text: 'About College',
                      ),
                      Tab(text: 'Hostel Facility'),
                      Tab(text: 'Q & A'),
                      Tab(text: 'Events'),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: TabBarView(
                    children: [
                      // Content for the first tab (About College)
                      SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Description',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),

                            SizedBox(height: 10),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.',
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Location',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Image.asset(
                              'assets/images/Background.png',
                              height: 150,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            )
                                .box
                                .rounded
                                .white
                                .clip(Clip.antiAlias)
                                .outerShadowSm
                                .make()
                                .onTap(() {}),
                            SizedBox(height: 20),
                            Text(
                              'Student Review',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Container(
                              height: 100,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                separatorBuilder: (context, index) =>
                                    SizedBox(width: 8.0),
                                itemCount: studentReviews.length,
                                itemBuilder: (context, index) {
                                  final review = studentReviews[index];
                                  return GestureDetector(
                                    onTap: () =>
                                        setState(() => selectedIndex = index),
                                    child: Stack(
                                      children: [
                                        Image.asset(
                                          review.imageUrl!,
                                          height: 100,
                                          width: 100,
                                          fit: BoxFit.cover,
                                          // clipBehavior: Clip.antiAlias,
                                        )
                                            .box
                                            .rounded
                                            .white
                                            .clip(Clip.antiAlias)
                                            .outerShadowSm
                                            .make(),
                                        if (selectedIndex == index)
                                          Positioned(
                                            bottom: 0,
                                            left: 0,
                                            right: 0,
                                            child: Icon(
                                              Icons
                                                  .arrow_drop_down_circle_rounded,
                                              color: Colors.white,
                                            ),
                                          ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                            // Second tab content (reviews)
                            20.heightBox,
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  5.heightBox,
                                  if (selectedIndex >= 0 &&
                                      selectedIndex < studentReviews.length)
                                    // Display review details only if a valid index is selected
                                    Text(
                                      studentReviews[selectedIndex].name!,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  SizedBox(height: 10),
                                  if (selectedIndex >= 0 &&
                                      selectedIndex < studentReviews.length)
                                    // Display review details only if a valid index is selected
                                    Text(
                                      studentReviews[selectedIndex].review!,
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  5.heightBox,
                                  if (selectedIndex >= 0 &&
                                      selectedIndex < studentReviews.length)
                                    // Display rating widget only if a valid index is selected
                                    VxRating(
                                      onRatingUpdate: (value) {},
                                      value:
                                          studentReviews[selectedIndex].rating!,
                                      normalColor: Colors.grey,
                                      selectionColor: Colors.amber,
                                      count: 5,
                                      size: 25,
                                      maxRating: 5,
                                    ),
                                ]).box.clip(Clip.antiAlias).outerShadowSm.make(),
                          ],
                        ),
                      ),
                      // Content for the second tab (Hostel Facility)
                      SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 15),
                            Container(
                              height: 35,
                              // width: 50,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                // separatorBuilder: (context, index) => SizedBox(width: 6.0),
                                itemCount: 4,
                                itemBuilder: (context, index) {
                                  // final review = studentReviews[index];
                                  final isSelected = selectedIndex ==
                                      index; // Track selection state

                                  return GestureDetector(
                                    onTap: () =>
                                        setState(() => selectedIndex = index),
                                    child: Container(
                                      margin: EdgeInsets.only(left: 20),
                                      // width: 50,
                                      // height: 30,
                                      decoration: BoxDecoration(
                                        color: isSelected
                                            ? Color(0xFF0E3C6E)
                                            : Colors
                                                .white, // Change color on tap
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          // Outline border
                                          color: Color(
                                              0xFF0E3C6E), // Outline color
                                          width:
                                              2.0, // Outline width (adjust as needed)
                                        ),
                                      ),

                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        mainAxisSize: MainAxisSize
                                            .min, // Restrict size to content
                                        children: [
                                          Text(
                                            ' ',
                                            style: TextStyle(
                                              fontSize: 25.0,
                                              color: !isSelected
                                                  ? Color(0xFF0E3C6E)
                                                  : Colors.white,
                                            ),
                                          ),
                                          Icon(
                                            Icons.hotel_outlined,
                                            color: !isSelected
                                                ? Color(0xFF0E3C6E)
                                                : Colors.white,
                                            size: 25.0,
                                          ),
                                          const SizedBox(width: 12.0),
                                          Text(
                                            '${4 - index}',
                                            style: TextStyle(
                                              fontSize: 25.0,
                                              color: !isSelected
                                                  ? Color(0xFF0E3C6E)
                                                  : Colors.white,
                                            ),
                                          ),
                                          Text(
                                            ' ',
                                            style: TextStyle(
                                              fontSize: 25.0,
                                              color: !isSelected
                                                  ? Color(0xFF0E3C6E)
                                                  : Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            // Second tab content (reviews)
                            20.heightBox,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (selectedIndex >= 0 &&
                                    selectedIndex < studentReviews.length)
                                  // Display review details only if a valid index is selected
                                  Container(
                                    child: Column(
                                      children: [
                                        CarouselSlider(
                                          items: [
                                            for (String imageUrl in images
                                                .map((review) => review)
                                                .toList())
                                              Image.asset(
                                                imageUrl,
                                                fit: BoxFit.cover,
                                                errorBuilder: (context, error,
                                                        stackTrace) =>
                                                    Center(
                                                        child: Text(
                                                            'Error loading image')), // Handle errors
                                              )
                                                  .box
                                                  .rounded
                                                  .white
                                                  .clip(Clip.antiAlias)
                                                  .outerShadowSm
                                                  .make(),
                                            // ... additional image widgets if needed
                                          ],
                                          options: CarouselOptions(
                                            height:
                                                154.0, // Adjust height as desired
                                            viewportFraction:
                                                0.5, // Adjust viewport percentage for visibility
                                          ),
                                        ),
                                        10.heightBox,
                                        Positioned(
                                          bottom: 10.0, // Adjust positioning
                                          left: 0.0, // Adjust positioning
                                          child: MyCustomIndicator(
                                              currentIndex: 2, itemCount: 6),
                                        ),
                                      ],
                                    ),
                                  ),
                                SizedBox(height: 10),
                                if (selectedIndex >= 0 &&
                                    selectedIndex < studentReviews.length)
                                  // Display review details only if a valid index is selected
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      'GHJK Engineering Hostel'
                                          .text
                                          .size(20)
                                          .bold
                                          .color(Colors.black)
                                          .make(),
                                      SizedBox(width: 12),
                                      Container(
                                        width: 52,
                                        height: 28,
                                        color: Colors.green,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              '4.5',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                          ],
                                        ),
                                      )
                                          .box
                                          .roundedSM
                                          .white
                                          .clip(Clip.antiAlias)
                                          .outerShadowSm
                                          .make(),
                                    ],
                                  ),
                              ],
                            ).box.clip(Clip.antiAlias).outerShadowSm.make(),
                            15.heightBox,
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/location.png',
                                  scale: 0.6,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Lorem ipsum dolor sit amet,consectetur',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                            15.heightBox,
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.',
                              style: TextStyle(fontSize: 14),
                            ),
                            20.heightBox,
                            'Facilities'
                                .text
                                .size(20)
                                .bold
                                .color(Colors.black)
                                .make(),
                            15.heightBox,
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/university.png',
                                  scale: 0.6,
                                ),
                                SizedBox(width: 10),
                                'College in 400mtrs'
                                    .text
                                    .size(20)
                                    .bold
                                    .color(Colors.black)
                                    .make(),
                              ],
                            ),
                            10.heightBox,
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/bath.png',
                                  scale: 0.6,
                                ),
                                SizedBox(width: 10),
                                'Bathrooms : 2'
                                    .text
                                    .size(20)
                                    .bold
                                    .color(Colors.black)
                                    .make(),
                              ],
                            )
                          ],
                        ),
                      ),
                      // Content for the third tab (Q & A)
                      SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Q & A',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Frequently asked questions and answers...',
                              style: TextStyle(fontSize: 16),
                            ),
                            // Similar structure for Location, Photos, and Reviews as in the first tab
                          ],
                        ),
                      ),
                      // Content for the fourth tab (Events)
                      SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Events',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Upcoming events and activities...',
                              style: TextStyle(fontSize: 16),
                            ),
                            // Similar structure for Location, Photos, and Reviews as in the first tab
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        height: 85,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ElevatedButton(
            onPressed: () {
              // Add to cart logic
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              backgroundColor: Color(0xFF0E3C6E),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: Text('Apply Now',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white)),
          ),
        ),
      ),
    );
  }
}

class MyCustomIndicator extends StatelessWidget {
  final int currentIndex;
  final int itemCount;

  const MyCustomIndicator(
      {required this.currentIndex, required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        itemCount,
        (index) => Icon(
          index == currentIndex ? Icons.circle : Icons.circle_outlined,
          color: Colors.grey,
          size: 10.0,
        ),
      ),
    );
  }
}
