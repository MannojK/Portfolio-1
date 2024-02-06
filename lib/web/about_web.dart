import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:port_folio/components.dart';
import 'package:url_launcher/url_launcher.dart';


class AboutWeb extends StatefulWidget {
  const AboutWeb({super.key});

  @override
  State<AboutWeb> createState() => _AboutWebState();
}

class _AboutWebState extends State<AboutWeb> {
  tealContainer(String text) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.tealAccent, style: BorderStyle.solid, width: 2.0),
        borderRadius: BorderRadius.circular(5.0),
      ),
      padding: EdgeInsets.all(7.0),
      child: Text(
        text,
        style: GoogleFonts.openSans(fontSize: 15.0),
      ),
    );
  }

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
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
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
      body: ListView(
        children: [
          SizedBox(
            height: 500,
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SansBold("About me ", 40),
                      SizedBox(
                        height: 29,
                      ),
                      Row(
                        children: [
                          tealContainer('Flutter'),
                          SizedBox(
                            width: 7.0,
                          ),
                          tealContainer('Firebase'),
                          SizedBox(
                            width: 7.0,
                          ),
                          tealContainer('Android'),
                          SizedBox(
                            width: 7.0,
                          ),
                          tealContainer('IOS'),
                          SizedBox(
                            width: 7.0,
                          ),
                          tealContainer('Windowss'),
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
                        // backgroundImage: AssetImage('assets/profile.jpeg'),
                        child: Image.asset(
                          'assets/profile2-circle.png',
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
          // *** FIRST SECTION 
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedCardWeb(
                imagePath: 'assets/webL.png',
                height: 250,
                width: 250,
              ),
              SizedBox(
                width: widthDevice / 3,
                child: Column(
                  children: [
                    SansBold("Web development", 30.0),
                    SizedBox(height: 15.0,),
                    Sans(
                        "Im here to build your presence online with stat of the art web apps",
                        15),
                  ],
                ),
              ),
            ],
          ),
            // *** SECOND  SECTION 
         SizedBox(height: 10.0,),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            
              SizedBox(
           
                width: widthDevice / 3,
                child: Column(
                  children: [
                    SansBold("App development", 30.0),
                    SizedBox(height: 10,),
                    Sans(
                        "Do you need a high performance , responsive apps for you project , I got you covered ",
                        15),
                  ],
                ),
              ),
                AnimatedCardWeb(
                imagePath: 'assets/app.png',
                height: 250,
                width: 250,
                reverse: true,
              ),
            ],
          ),
            // *** LAST SECTION 
          SizedBox(height: 15,),
             Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedCardWeb(
                imagePath: 'assets/firebase.png',
                height: 250,
                width: 250,
              ),
              SizedBox(
                width: widthDevice / 3,
                child: Column(
                  children: [
                    SansBold("Web development", 30.0),
                    Sans(
                        " Get your app a strong base with the fire base backened ",
                        15),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
