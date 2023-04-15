import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:pandora/AssistantScreens/mainassistantscreen.dart';
import 'package:pandora/Constants/constants.dart';
import 'package:swipable_stack/swipable_stack.dart';
import 'package:cool_alert/cool_alert.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final SwipableStackController _controller;

  void _listenController() => setState(() {});

  @override
  void initState() {
    super.initState();
    _controller = SwipableStackController()..addListener(_listenController);
  }

  @override
  void dispose() {
    super.dispose();
    _controller
      ..removeListener(_listenController)
      ..dispose();
  }

  @override
  Widget build(BuildContext context) {
    CC cc = new CC();
    return Scaffold(
      backgroundColor: cc.c1,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: cc.c1,
        title: Text("ITEM NAME"),
      ),
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: SwipableStack(
                  detectableSwipeDirections: const {
                    SwipeDirection.right,
                    SwipeDirection.left,
                    SwipeDirection.down,
                    SwipeDirection.up,
                  },
                  controller: _controller,
                  stackClipBehaviour: Clip.none,
                  onSwipeCompleted: (index, direction) {
                    if (direction == SwipeDirection.left) {
                      CoolAlert.show(
                        context: context,
                        type: CoolAlertType.success,
                        text: 'Item Succesfully added to cart',
                        autoCloseDuration: const Duration(seconds: 2),
                      );
                    }
                  },
                  horizontalSwipeThreshold: 0.4,
                  verticalSwipeThreshold: 0.8,
                  builder: (context, properties) {
                    // final itemIndex = properties.index % _images.length;

                    return Stack(
                      children: [
                        Container(
                          height: 600,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 25.0,
                                ),
                              ],
                              color: cc.c2,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Column(children: [
                            SizedBox(
                              height: 22,
                            ),
                            SizedBox(
                              height: 280,
                              width: 280,
                              child: Image.asset("assets/images/amul.png"),
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: Text("Product Name",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 32,
                                            color: cc.c1),
                                      )),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: Text('\u{20B9}${150}',
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 32,
                                            color: Colors.green),
                                      )),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: Text("Delivery : ",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22,
                                            color: cc.c1),
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: Text('5 days',
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22,
                                            color: Colors.brown),
                                      )),
                                ),
                              ],
                            ),
                            SizedBox(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text(
                                    'Amul Peanut Butter Creamy | 300 g Jar  Zero Preservatives',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Colors.brown),
                                    )),
                              ),
                            ),
                          ]),
                        )
                        // more custom overlay possible than with overlayBuilder
                        // if (properties.stackIndex == 0 &&
                        //     properties.direction != null)
                        //   CardOverlay(
                        //     swipeProgress: properties.swipeProgress,
                        //     direction: properties.direction!,
                        //   )
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {},
          child: Icon(Icons.shopping_bag_outlined)),
    );
  }
}
