import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:port_folio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class Blog_mobile extends StatefulWidget {
  const Blog_mobile({super.key});

  @override
  State<Blog_mobile> createState() => _Blog_mobileState();
}

class _Blog_mobileState extends State<Blog_mobile> {
  List title = ["Who is Dash?", "Who is Dash 1?"];
  List body = [
    "Well, we can all read about it in google",
  ];
  void article() async {
    await FirebaseFirestore.instance
        .collection('articles')
        .get()
        .then((querySnapshot) {
      querySnapshot.docs.reversed.forEach((element) {
        // print(element.data()['title']);
      });
    });
  }

  void streamArticle() async {
    await for (var snapshot
        in FirebaseFirestore.instance.collection('articles').snapshots()) {
      for (var title in snapshot.docs) {
        print(title.data()['title']);
      }
    }
  }

  @override
  void initState() {
    //
    streamArticle();
    super.initState();
  }

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
                centerTitle: true,
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
              expandedHeight: 400,
            ),
          ];
        },
        body: ListView.builder(
            itemCount: title.length,
            itemBuilder: (BuildContext, context) {
              return BlogPost(title: title[index], body: body[index]);
            }),
      ),
    ));
  }
}

class BlogPost extends StatefulWidget {
  final title;
  final body;
  const BlogPost({super.key, required this.title, required this.body});

  @override
  State<BlogPost> createState() => _BlogPostState();
}

class _BlogPostState extends State<BlogPost> {
  bool expand = false;

  _BlogPostState();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        top: 30,
        right: 20.0,
      ),
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            border: Border.all(
                style: BorderStyle.solid, width: 1.0, color: Colors.black)),
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
                    text: widget.title.toString(),
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
            SizedBox(
              height: 7.0,
            ),
            Text(
              widget.body.toString(),
              maxLines: expand == true ? null : 3,
              overflow:
                  expand == true ? TextOverflow.visible : TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
