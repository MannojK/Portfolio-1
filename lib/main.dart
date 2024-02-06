import 'package:flutter/material.dart';



import 'package:port_folio/routes.dart';

import 'package:url_strategy/url_strategy.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:ui' ;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
      apiKey: "AIzaSyBkiFhEIfn4AFHJLYyvpfp3Jq-l_0MJ5oc",
      authDomain: "portfolio-4f46d.firebaseapp.com",
      projectId: "portfolio-4f46d",
      storageBucket: "portfolio-4f46d.appspot.com",
      messagingSenderId: "813416292915",
      appId: "1:813416292915:web:6af8ca65aa5fb07848b946",
    ));
  } else {
    await Firebase.initializeApp();
  }

  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(primarySwatch: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      //   home: LayoutBuilder(builder: (context, constraints) {
      //     if (constraints.maxWidth > 800) {
      //       return
      //  PageOne();
      //     } else {
      //       return LandingPageMobile();
      //     }
      //   }),
      onGenerateRoute: (settings) => Routes.generateRoute(settings),
      initialRoute: '/',
    );
  }
}
