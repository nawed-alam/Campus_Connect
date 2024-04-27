import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget CustomContainer(BuildContext context,String ? imageUrl){
  return  Container(
                      width: 335,
                      height: 250,
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset('${imageUrl}'),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(7.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.share,
                                            color: Color(0xFF0E3C6E)),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(7.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.bookmark_border,
                                            color: Color(0xFF0E3C6E)),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          // 5.heightBox,
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                'GHJK Engineering Hostel'
                                    .text
                                    .size(16)
                                    .bold
                                    .color(Colors.black)
                                    .make(),
                                SizedBox(width: 12),
                                Container(
                                  width: 52,
                                  height: 21,
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
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 5, right: 5, bottom: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 1, // Adjust flex as needed
                                  child:
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.'
                                          .text
                                          .size(10)
                                          .color(Colors.black)
                                          .make(),
                                ),
                                SizedBox(width: 12),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 5, right: 5, bottom: 5),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Add to cart logic
                                    },
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.only(left: 3.0),
                                      backgroundColor: Color(0xFF0E3C6E),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    child: Text(
                                      'Apply Now',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
                          2.heightBox,
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/like.png',
                                scale: 0.67,
                              ),
                              // SizedBox(width: 5),
                              'More than 1000+ students have been placed'
                                  .text
                                  .size(8)
                                  .color(Colors.black)
                                  .make(),
                              5.widthBox,
                              Icon(
                                Icons.visibility,
                                size: 17,
                              ),
                              '46+'.text.size(5).color(Colors.black).make(),
                            ],
                          )
                        ],
                      ),
  );
}