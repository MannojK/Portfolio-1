import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:port_folio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  tealContainer(String text) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.tealAccent, style: BorderStyle.solid, width: 2.0),
        borderRadius: BorderRadius.circular(5.0),
      ),
      padding: EdgeInsets.all(7.0),
      child: Text(
        "Flutter",
        style: GoogleFonts.openSans(fontSize: 15.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
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
          TabsMobile(text: "Blog", route: '/blog'),
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
      body: ListView(
        children: [
          CircleAvatar(
                  radius: 125,
                  backgroundColor: Colors.yellow,
                  child: CircleAvatar(
                    radius: 117,
                    backgroundColor: Colors.tealAccent,
                    backgroundImage: AssetImage('assets/actor.jpg'),
                  ),
                ),
          // INtro, first section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                SizedBox(
                  height: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: SansBold("hello I'm", 15),
                    ),
                    SansBold("Manoj Kumar ", 40),
                    SansBold("Flutter Developer ", 20),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 3.0,
                      children: [
                        Icon(Icons.email),
                        Icon(
                          Icons.call,
                        ),
                        Icon(Icons.location_pin),
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 9.0,
                      children: [
                        Sans("Manojkumar@gmail.com", 15),
                        Sans("+ 34 54 235 535 ", 15),
                        Sans("Hyderabad ", 15),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 90,
          ),
          // About  me , second section
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
          SizedBox(height: 60,),
          // Third Section What I do ?
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SansBold("What I do", 35),
              AnimatedCardWeb(imagePath:'assets/webL.png', text: 
              "Web Development", width: 300.0,),
              SizedBox(height:30,),
                 AnimatedCardWeb(imagePath:'assets/app.png', text: 
              "App Development", width: 300.0,reverse: true,),   
              SizedBox(height: 35,),AnimatedCardWeb(imagePath:'assets/firebase.png', text: 
              "Back-end Development", width: 300.0,),
              SizedBox(height: 60,),
              // Contact Forth sectoin
              Wrap(
            runSpacing: 20,
            spacing: 20,
            alignment: WrapAlignment.center,
            children: [
              SansBold("Contact me ", 35),
              TextForm(heading: "First name ", width: widthDevice/1.4, hintText: "Please type first Name ", maxLine: 1),
              
              TextForm(heading: " Last name ", width: widthDevice/1.4, hintText: "Please last Name ", maxLine: 1),
            
              TextForm(heading: "Email", width: widthDevice/1.4, hintText: "Please Email", maxLine: 1),
          
              TextForm(heading: "Phone  Number  ", width: widthDevice/1.4, hintText: "+ 54 46 344 34 ", maxLine: 1),
              MaterialButton(onPressed: (){

              },
              elevation: 20.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),

              ),
              height: 60,
              minWidth: widthDevice/2.2,
              color: Colors.tealAccent,
              child: Text("Submit"),
              )

            ],
              ),
              SizedBox(height: 15,),
            ],
          )
        ],
      ),
    );
  }
}
