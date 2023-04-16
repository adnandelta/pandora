import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:pandora/AssistantScreens/mainassistantscreen.dart';
import 'package:pandora/Constants/constants.dart';
import 'package:swipable_stack/swipable_stack.dart';
import 'package:cool_alert/cool_alert.dart';

class MoreDetails extends StatefulWidget {
  const MoreDetails({super.key});

  @override
  State<MoreDetails> createState() => _MoreDetailsState();
}

class _MoreDetailsState extends State<MoreDetails> {
  @override
  Widget build(BuildContext context) {
    CC cc = new CC();

    return Scaffold(
      backgroundColor: cc.c2,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: cc.c1,
        title: Text("ITEM NAME"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 22,
            ),
            Center(
              child: SizedBox(
                height: 280,
                width: 280,
                child: Hero(
                    tag: 'img', child: Image.asset("assets/images/amul.png")),
              ),
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
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.brown),
                    )),
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text('Seller Details ',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                        color: Colors.brown),
                  )),
            ),
            SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text('Seller Address ',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                        color: Colors.brown),
                  )),
            ),
            SizedBox(
              height: 22,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => HomePage()));
                  CoolAlert.show(
                    context: context,
                    type: CoolAlertType.success,
                    text: 'Item Succesfully added to cart',
                    autoCloseDuration: const Duration(seconds: 2),
                  );
                },
                child: Container(
                    height: 80,
                    width: 200,
                    decoration: BoxDecoration(
                        color: cc.c1,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: Text("Add to cart",
                          style: TextStyle(color: cc.c2, fontSize: 28)),
                    )),
              ),
            ),
            SizedBox(
              height: 22,
            ),
          ],
        ),
      ),
    );
  }
}
