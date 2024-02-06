import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:port_folio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({super.key});

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;

    return Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            CircleAvatar(
              radius: 72.0,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/image.png'),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SansBold("Manoj Kumar ", 30),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () async {
                    await launchUrl(Uri.parse("https://www.github.com"));
                  },
                  icon: SvgPicture.asset(
                    "assets/instagram.svg",
                    color: Colors.black,
                    width: 35,
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    await launchUrl(
                        Uri.parse("https://wwwinstagram.com/tomcruise"));
                  },
                  icon: SvgPicture.asset(
                    "assets/instagram.svg",
                    color: Colors.black,
                    width: 35,
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    await launchUrl(Uri.parse("https://www.twitter.com"));
                  },
                  icon: SvgPicture.asset(
                    "assets/twitter.svg",
                    color: Colors.black,
                    width: 35,
                  ),
                ),
              ],
            )
          ]),
        ),
        backgroundColor: Colors.white,
        body: NestedScrollView(headerSliverBuilder:
            (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 500.0,
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(
                size: 25.0,
                color: Colors.black,
              ),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('assets/contact_image.jpg',fit:BoxFit.cover ,
              filterQuality: FilterQuality.high,
              ),
            ),
            title: Row(children: [
              Spacer(flex: 3,),
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
            ]),
            ),
          ];
        },
      
        body: SingleChildScrollView(
           child: Column(
            
            children: [
              SizedBox(height: 20,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextForm(heading: "First Name", width:350, hintText: "Enter your first name ", maxLine: 1),
                TextForm(heading: "Last Name", width:350, hintText: "Enter your last name ", maxLine: 1),
              ],
             ),
             SizedBox(height: 29,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextForm(heading: " Email Adress", width:350, hintText: "xyz@gmail.com ", maxLine: 1),
                TextForm(heading: "Phone Number ", width:350, hintText: " +9034 545 5454 ", maxLine: 1),
              ],
             ),
 SizedBox(height: 29,),
             
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextForm(heading: 
                "Comments", width: 400, hintText: "Enter your comments ", maxLine: 8.0)
              ],
             ),
            ],
           ),          
        ),
        )
        );
  }
}
