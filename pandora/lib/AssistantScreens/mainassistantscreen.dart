import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'dart:ui';

import 'package:lottie/lottie.dart';
import 'package:pandora/SwipeHomeScreens/homepage.dart';

import '../Constants/constants.dart';

class MainAssistantScreen extends StatefulWidget {
  const MainAssistantScreen({super.key});

  @override
  State<MainAssistantScreen> createState() => _MainAssistantScreenState();
}

class _MainAssistantScreenState extends State<MainAssistantScreen> {
  @override
  Widget build(BuildContext context) {
    CC cc = new CC();
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Lottie.network(
              'https://assets7.lottiefiles.com/packages/lf20_5aaicf2r.json',
              animate: true,
              height: 200,
              width: 800),
          Container(
            height: 200,
            width: 350,
            decoration: BoxDecoration(
                border: Border.all(
                  color: cc.c1,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: 180,
                width: 320,
                child: Text("Please Tell me what you want to buy",
                    style: TextStyle(
                        color: cc.c1,
                        fontSize: 22,
                        fontWeight: FontWeight.w600)),
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Container(
                  height: 80,
                  width: 200,
                  decoration: BoxDecoration(
                      color: cc.c1,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(
                    child: Text("Press to Speak",
                        style: TextStyle(color: cc.c2, fontSize: 28)),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Divider(
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: TextField(
                // controller: controller,
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
