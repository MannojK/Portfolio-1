import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:port_folio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({super.key});

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
child: Scaffold(
   extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(size: 35.0, color: Colors.black),
      ),
      endDrawer: Drawer(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DrawerHeader(
            padding: EdgeInsets.only(bottom: 29),
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2.0, color: Colors.black)),
              child: CircleAvatar(
                radius: 49,
                backgroundImage: AssetImage('assets/eren.jpg'),
              ),
            ),
          ),
          TabsMobile(text: "Home", route: '/'),
          SizedBox(
            height: 20,
          ),
          TabsMobile(text: "Works", route: '/works'),
          SizedBox(
            height: 20.0,
          ),
          TabsMobile(text: "Blog", route: '/Blog'),
          SizedBox(
            height: 20,
          ),
                    TabsMobile(text: "About", route: '/about'),
          SizedBox(
            height: 20,
          ),

          TabsMobile(text: "contact", route: '/contact'),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () async => await launchUrl(
                      Uri.parse("https://www.instagram.com/tomcruise")),
                  icon: SvgPicture.asset(
                    "assets/instagram.svg",
                    color: Colors.black,
                    width: 35,
                  )),
              IconButton(
                  onPressed: () async => await launchUrl(
                      Uri.parse("https://www.instagram.com/tomcruise")),
                  icon: SvgPicture.asset(
                    "assets/github.svg",
                    color: Colors.black,
                    width: 35,
                  )),
              IconButton(
                  onPressed: () async => await launchUrl(
                      Uri.parse("https://www.instagram.com/tomcruise")),
                  icon: SvgPicture.asset(
                    "assets/twitter.svg",
                    color: Colors.black,
                    width: 35,
                  )),
            ],
          ),
        ],
      )),
      body: Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
      child: ListView(
        children: [
          CircleAvatar(
            radius: 130,
            backgroundColor: Colors.tealAccent,
            child: CircleAvatar(radius:125,backgroundImage: AssetImage("assets/actor.jpg"),)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),

            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SansBold("About me ", 35),
                  Sans(
                      "Hello I'm  Manoj kumar I specialize in flutter development ",
                      15),
                  Sans(
                      "I strive to ensure astounding performance with state of ",
                      15),
                  Sans(" the art security for Android,Ios, Web, Mac , Linux  ",
                      15),
                  SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    spacing: 7.0,
                    runSpacing: 7.0,
                    children: [
                   tealContainer("Flutter"),
                   tealContainer("Android"),
                   tealContainer("Firebase"),
                   tealContainer("Windows"),
                 
                    ],
                  )
                ]),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
SizedBox(height: 20.0,),
AnimatedCardWeb(imagePath: 'assets/app.png', ),
SizedBox(height: 15,),
SansBold("App Development", 30),
SizedBox(height: 19,),
AnimatedCardWeb(imagePath: 'assets/webL.png', ),
SizedBox(height: 15,),
SansBold("Web Development", 30),
SizedBox(height: 19,),
AnimatedCardWeb(imagePath: 'assets/firebase.png', ),
SizedBox(height: 15,),
SansBold("Firsebase  Development", 30),
SizedBox(height: 19,),


          ],)
        ],
      ),
      ),
),
    );
  }
}

