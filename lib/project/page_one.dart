import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'page_two.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    final deviceheight = MediaQuery.of(context).size.height;
    final devicewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(shape: Border(bottom: BorderSide())),
      backgroundColor: Color.fromRGBO(26, 26, 28, 0.998),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(26, 26, 28, 0),
        elevation: 0,
        iconTheme: IconThemeData(
          size: 25,
          color: Color.fromRGBO(78, 78, 80, 3),
        ),
        title: Row(
          children: [
            Spacer(
              flex: 1,
            ),
            PageTwo("Home"),
            Spacer(),
            PageTwo("About"),
            Spacer(),
            PageTwo("Contact"),
            Spacer(),
            PageTwo("Help"),
            Spacer(),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: deviceheight - 45,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                        // child: fontred("Hello I'm", 25 ),
                        child: fontwhite(
                          text: "Hello I'm ",
                          size: 25,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      fontwhite(
                        text: "Manoj Kumar ",
                        size: 17,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      fontwhite(
                        text: "FluTT ",
                        size: 17,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      fontwhite(
                        text: "Hyderabad ",
                        size: 17,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 170,
                        backgroundColor: Color.fromRGBO(149, 7, 66, 1),
                        child: CircleAvatar(
                          radius: 160,
                          backgroundImage: AssetImage('assets/eren.jpg'),
                          backgroundColor: Color.fromRGBO(149, 7, 65, 0),
                        ),
                      ),
                    ],
                  )
                ]),
          )
        ],
      ),
    );
  }
}
