import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class PageTwo extends StatefulWidget {
  final title;
  const PageTwo(
    this.title, {
    super.key,
  });

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isSelected = true;
        });
      },
      onExit: (event) {
        setState(() {
          isSelected = false;
        });
      },
      child: AnimatedDefaultTextStyle(
        duration: Duration(milliseconds: 100),
        curve: Curves.elasticIn,
        style: isSelected
            ? GoogleFonts.aBeeZee(
                shadows: [
                    Shadow(
                      color: Colors.black,
                      offset: Offset(0, -8),
                    ),
                  ],
                color: Colors.transparent,
                decoration: TextDecoration.underline,
                decorationThickness: 2,
                decorationColor: Colors.purple,
                fontSize: 19,
                fontWeight: FontWeight.bold)
            : GoogleFonts.belleza(fontSize: 19, fontWeight: FontWeight.w600),
        child: Text(
          widget.title,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class fontred extends StatelessWidget {
  final text;
  final size;
  final color;
  const fontred({super.key,@required this.text,@required this.size,this.color,});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,style: GoogleFonts.eater(fontSize: size,color: color),
    );
  }
}
class fontwhite extends StatelessWidget {
  final text;
  final size;
  final color;
  const fontwhite({super.key,@required this.text,@required this.size,this.color,});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,style: GoogleFonts.butcherman(fontSize: size,color: color),
    );
  }
}

