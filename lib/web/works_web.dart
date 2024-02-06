import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:port_folio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class works_web extends StatefulWidget {
  const works_web({super.key});

  @override
  State<works_web> createState() => _works_webState();
}

class _works_webState extends State<works_web> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const CircleAvatar(
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
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 500.0,
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(
                  size: 25.0,
                  color: Colors.black,
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'assets/works.jpg',
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),
                title: Row(children: [
                  Spacer(
                    flex: 3,
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
                ]),
              ),
            ];
          },
          body: ListView(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 30.0,
                  ),
                  SansBold("Works ", 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AnimatedCardWeb(
                        imagePath: 'assets/screenshot.png',
                        height: 250,
                        width: 350,
                        
                      ),
                      SizedBox(
                        width: widthDevice / 3,
                        child: Column(children: [
                          SansBold('Portfolio', 30.0),
                          SizedBox(height: 15,),
                        ]),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
