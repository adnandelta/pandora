import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pandora/AssistantScreens/mainassistantscreen.dart';
import 'package:pandora/Constants/constants.dart';

class SelectLanduage extends StatefulWidget {
  const SelectLanduage({Key? key}) : super(key: key);

  @override
  _SelectLanduageState createState() => _SelectLanduageState();
}

class _SelectLanduageState extends State<SelectLanduage> {
  List languages = [
    "English",
    "हिन्दी",
    "ಕನ್ನಡ",
    "తెలుగు",
    "தமிழ்",
    "मराठी",
    "ગુજરાતી",
    "മലയാളം"
  ];
  @override
  Widget build(BuildContext context) {
    CC cc = new CC();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "  Select Language",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Lottie.network(
                  'https://assets4.lottiefiles.com/packages/lf20_0isufwmo.json',
                  animate: true,
                  height: 180,
                  width: 600),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Wrap(
                  children: [
                    GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 6,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: MediaQuery.of(context).orientation ==
                                Orientation.landscape
                            ? 3
                            : 2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        childAspectRatio: (2 / 2),
                      ),
                      itemBuilder: (
                        context,
                        index,
                      ) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    MainAssistantScreen()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(languages[index][0],
                                    style: TextStyle(
                                        fontSize: 36,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center),
                                Text(languages[index],
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.black),
                                    textAlign: TextAlign.center),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
