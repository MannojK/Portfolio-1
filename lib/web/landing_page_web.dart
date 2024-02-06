import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:port_folio/components.dart';
import 'package:port_folio/web/contact_web.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageWeb extends StatefulWidget {
  LandingPageWeb({
    super.key,
  });

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  urlLauncher(String imgPath, String url) {
    return IconButton(
      icon: SvgPicture.asset(
        imgPath,
        color: Colors.black,
        width: 35,
      ),
      onPressed: () async {
        await launchUrl(Uri.parse(url));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      //                                                 ****** DRAWER *******
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.red,
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/profile.jpeg'),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SansBold("Manoj Kumar ", 30.0),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                urlLauncher('assets/instagram.svg',
                    "https://stackoverflow.com/questions/65883844/flutter-url-launcher-is-not-launching-url-in-release-mode"),
                // urlLauncher('assets/twitter.svg', "https://monkeytype.com/"),
                IconButton(
                  onPressed: () async {
                    launchUrl(Uri.parse("https://monkeytype.com/"));
                  },
                  color: Colors.greenAccent, //<-- SEE HERE
                  iconSize: 50,
                  icon: Icon(
                    Icons.account_balance_rounded,
                  ),
                ),
                urlLauncher('assets/github.svg',
                    "https://pub.dev/packages/url_launcher"),
              ],
            ),
          ],
        ),
      ),

      //                ********  APP BAR *********

      backgroundColor: Colors.white,
      appBar: AppBar(
        
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          size: 25.0,
          color: Colors.black,
        ),
        title: Row(
          children: [
            Spacer(
              flex: 2,
            ),
            Components(
              title: 'Home',
              route: "/",
            ),
            Spacer(),
            Components(
              title: 'Works',
              route: "/works",
            ),
            Spacer(),
            Components(
              title: 'Blog',
              route: "/blog",
            ),
            Spacer(),
            Components(
              title: 'About ',
              route: "/about",
            ),
            Spacer(),
            Components(
              title: 'Contact',
              route: "/contact",
            ),
            Spacer(),
          ],
        ),
      ),
      body: ListView(
        children: [
          //                                      **********     FIRST PAGE     ********
          Container(
            height: heightDevice - 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: SansBold("Hello I'm ", 15),
                    ),
                    SizedBox(height: 15),
                    SansBold('Manoj Kumar', 26),
                    Sans('Flutter Developer', 30),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(
                          width: 20,
                        ),
                        Sans('Manojkumar@gmail.com', 15),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Icon(Icons.call),
                        SizedBox(
                          width: 20,
                        ),
                        Sans('+3893 494 293', 15),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Icon(Icons.location_on),
                        SizedBox(
                          width: 20,
                        ),
                        Sans('Hyderabad ', 15),
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 147,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 143,
                    child: CircleAvatar(
                      radius: 140,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/profile.jpeg'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //                                      ************   SECOND PAGE     ********
          Container(
            height: heightDevice / 1.5,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    'assets/web.jpg',
                    height: widthDevice / 1.9,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SansBold("About me ", 27),
                      SizedBox(
                        height: 15,
                      ),
                      Sans(
                          "Hello I'm Manoj Kumar I specialize in flutter development ",
                          15),
                      Sans(
                          "I strive to ensure astounding performace with state of ",
                          15),
                      Sans(
                          "the art security for Android, IOS, Web, Mac , Linux and Windows ",
                          15),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: EdgeInsets.all(7),
                            child: Sans('Flutter deveoper ', 15),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: EdgeInsets.all(7),
                            child: Sans('Android  ', 15),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: EdgeInsets.all(7),
                            child: Sans('Firebase ', 15),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: EdgeInsets.all(7),
                            child: Sans('Windows ', 15),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          //                                       ************  THIRD  PAGE     ********
          Container(
            height: heightDevice / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold("What I do", 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AnimatedCardWeb(
                      imagePath: "assets/webL.png",
                      text: "Web Development",
                    ),
                    AnimatedCardWeb(
                      imagePath: "assets/app.png",
                      text: "App Development",
                      fit: BoxFit.contain,
                      reverse: true,
                    ),
                    AnimatedCardWeb(
                      imagePath: "assets/firebase.png",
                      text: "Back-ened Development",
                    ),
                    // Card(
                    //   elevation: 30,
                    //   shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(15.0),
                    //   ),
                    //   shadowColor: Color.fromARGB(255, 255, 8, 8),
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(15.0),
                    //     child: Column(
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: [
                    //           Image.asset(
                    //             'firebase.png',
                    //             height: 200,
                    //             width: 200,
                    //           ),
                    //           SizedBox(
                    //             height: 10,
                    //           ),
                    //        SansBold("Back-end Development", 15),
                    //         ]),
                    //   ),
                    // ),
                  ],
                )
              ],
            ),
          ),
          //                                       ************   FOURTH PAGE     ********
          Container(
            height: heightDevice,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold("Contact me", 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextForm(
                          width: 350,
                          heading: "First name ",
                          hintText: "enter your name ",
                          maxLine: 1,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextForm(
                          width: 350,
                          heading: "Last name ",
                          hintText: "enter your name ",
                          maxLine: 1,
                        ),
                        //  SizedBox(height: 18,),
                      ],
                    ),
                    Column(
                      children: [
                        TextForm(
                          width: 350,
                          heading: "Email",
                          hintText: "enter your name ",
                          maxLine: 1,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextForm(
                          width: 350,
                          heading: "Mobile Number ",
                          hintText: "+ 382 234 4590  ",
                          maxLine: 1,
                        ),
                      ],
                    ),
                  ],
                ),
                TextForm(
                    heading: "Message",
                    width: 350,
                    hintText: "Please type your  message ",
                    maxLine: 6),
                MaterialButton(
                    elevation: 20.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    height: 60,
                    minWidth: 200,
                    color: Colors.tealAccent,
                    child: SansBold("Submit ", 20.0),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ContactWeb()));
                    })
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
