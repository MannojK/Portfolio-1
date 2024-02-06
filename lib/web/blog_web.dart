import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:port_folio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class Blog_web extends StatefulWidget {
  const Blog_web({super.key});

  @override
  State<Blog_web> createState() => _Blog_webState();
}

class _Blog_webState extends State<Blog_web> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
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
          TabsMobile(text: "About", route: '/About'),
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
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(size: 35.0, color: Colors.black),
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: false,
                title: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 4,
                  ),
                  child: AbelCustom(
                      text: "Welcome to my blog",
                      size: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                background: Image.asset(
                  'assets/blog.jpg',
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.cover,
                ),
              ),
              expandedHeight: 550,
            ),
          ];
        },
        body: ListView(
          children: [
            BlogPost(),
            BlogPost(),
            BlogPost(),
            BlogPost(),
BlogPost()

          ],
        ),
      ),
    ));
  }
}

class BlogPost extends StatefulWidget {
  const BlogPost({super.key});

  @override
  State<BlogPost> createState() => _BlogPostState();
}

class _BlogPostState extends State<BlogPost> {
  bool expand = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 70,
        top: 40,
        right: 70.0,
      ),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(border:Border.all(style:BorderStyle.solid,width: 1.0, color: Colors.black) ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: AbelCustom(
                    text: "Who is Dash?",
                    size: 25.0,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      expand = !expand;
                    });
                  },
                  icon: Icon(Icons.arrow_drop_down_circle_outlined),
                  color: Colors.black,
                )
              ],
            ),
            SizedBox(height: 7.0,),
            Text(" to combine and make the particles in the atomic nucleus, protons and neutrons. These particles are called hadrons, so this period is often called the quark-hadron transition.From one second to three minutes after the Big Bang.At one second, the Universe grows to about a thousand times the size of our Solar System today and the temperature drops to 1 MeV, equivalent to 10 000 million degrees. Neutrons and protons combine to form the first nuclei: first deuterium, then helium and other elements. This is called 'primordial nucleosynthesis' and it lasts several minutes.Three minutes after the Big Bang the temperature is a thousand million degrees. It is still too hot, however, for the atomic nuclei to capture electrons and form real elements.From three minutes to 300 000 years after the Big Bang The Universe keeps expanding. It is too hot yet for electrons to be captured by the atomic nuclei. Electrons wander freely and are therefore able to interact with the photons (light 'particles') as a result, light is trapped and cannot propagate more than a very short distance before encountering an electron. Therefore the Universe is opaque.",style: GoogleFonts.openSans(fontSize:15.0),maxLines: expand == true? null: 3,
            overflow: expand==true ?TextOverflow.visible: TextOverflow.ellipsis,)
          ],
        ),
      ),
    );
  }
}
