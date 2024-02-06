import 'package:flutter/material.dart';
import 'package:port_folio/mobile/blog_mobile.dart';
import 'package:port_folio/mobile/landing_page_mobile.dart';
import 'package:port_folio/web/about_web.dart';
import 'package:port_folio/web/blog_web.dart';
import 'package:port_folio/web/contact_web.dart';
import 'package:port_folio/web/landing_page_web.dart';
import 'package:port_folio/web/works_web.dart';
// ignore: depend_on_referenced_packages
// import 'package:portfolio/mobile/about_mobile.dart';
// import 'package:portfolio/mobile/blog_mobile.dart';
// import 'package:portfolio/mobile/landing_page_mobile.dart';
// import 'package:portfolio/mobile/works_mobile.dart';

// import 'package:portfolio/web/about_web.dart';
// import 'package:portfolio/web/blog_web.dart';
// import 'package:portfolio/web/contact_web.dart';
// import 'package:portfolio/web/landing_page_web.dart';
// import 'package:portfolio/web/works_web.dart';

import 'mobile/about_mobile.dart';
import 'mobile/contact_mobile.dart';
import 'mobile/works_mobile.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return LandingPageWeb();
            } else {
              return LandingPageMobile();
            }
          }),
        );
      case '/contact':
        return MaterialPageRoute(
            builder: (_) => LayoutBuilder(builder: (context, constraints) {
                  if (constraints.maxWidth > 800) {
                    return ContactWeb();
                  } else {
                    return ContactMobile();
                  }
                }),
            settings: settings);
      case '/about':
        return MaterialPageRoute(
          builder: (context) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return AboutWeb();
            } else {
              return AboutMobile();
            }
          }),
       settings: settings );
         case '/blog':
        return MaterialPageRoute(
          builder: (context) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return Blog_web();
            } else {
              return Blog_mobile();
            }
          }),
       settings: settings );
       
    case '/works':
        return MaterialPageRoute(
          builder: (context) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return works_web();
            } else {
              return works_mobile();
            }
          }),
       settings: settings );
   
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return LandingPageWeb();
            } else {
              return LandingPageMobile();
            }
          }),
        );
    }
  }
}
