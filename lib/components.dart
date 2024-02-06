import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class Components extends StatefulWidget {
  final title;
  final route;
  Components({super.key, this.title, this.route});

  @override
  State<Components> createState() => _ComponentsState();
}

class _ComponentsState extends State<Components> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(widget.route);
      },
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            isSelected = true;
          });
          // print('Entered');
        },
        onExit: (_) {
          setState(() {
            isSelected = false;
          });
          // print('Exit');
        },
        //                                ******* ANIMATED TEXT STYLE ***********
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 100),
          curve: Curves.elasticIn,
          style: isSelected
              ? GoogleFonts.orbitron(
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      offset: Offset(0, -8),
                    ),
                  ],
                  fontSize: 18,
                  color: Colors.transparent,
                  decoration: TextDecoration.underline,
                  decorationThickness: 2,
                  decorationColor: Colors.tealAccent,
                )
              : GoogleFonts.orbitron(
                  color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          child: Text(widget.title),
        ),
      ),
    );
  }
}
//                                *******      SANSBOLD     ***********

class SansBold extends StatelessWidget {
  final text;
  final size;
  const SansBold(
    this.text,
    this.size, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}
//                                ************         SANS      ***********

class Sans extends StatelessWidget {
  final text;
  final size;
  const Sans(
    this.text,
    this.size, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        fontSize: size,
      ),
    );
  }
}
//                                ***********          TEXT FORM          ***********

class TextForm extends StatelessWidget {
  final heading;
  final width;
  final hintText;
  final maxLine;
  TextForm({
    super.key,
    @required this.heading,
    @required this.width,
    @required this.hintText,
    @required this.maxLine,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Sans(heading, 16),
        SizedBox(
          height: 5,
        ),
        SizedBox(
            width: width,
            child: TextFormField(
              // inputFormatters: [
              //   LengthLimitingTextInputFormatter(5),
              //   FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]'))
              // ],
              maxLines: maxLine == null ? null : maxLine,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.tealAccent, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                hintText: hintText,
                hintStyle: GoogleFonts.poppins(fontSize: 14),
              ),

              autovalidateMode: AutovalidateMode.onUserInteraction,
            )),
      ],
    );
  }
}
//                                ******* ANIMATED CARD WEB  ***********

class AnimatedCardWeb extends StatefulWidget {
  final imagePath;
  final text;
  final fit;
  final reverse;
  final height;
  final width;
  const AnimatedCardWeb(
      {super.key,
      @required this.imagePath,
      this.text,
      this.fit,
      this.reverse,
      this.height,
      this.width});

  @override
  State<AnimatedCardWeb> createState() => _AnimatedCardWebState();
}

class _AnimatedCardWebState extends State<AnimatedCardWeb>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller = AnimationController(
    vsync: this,
    duration: Duration(seconds: 4),
  )..repeat(reverse: true);

  late Animation<Offset> _animation = Tween(
    begin: widget.reverse == true ? Offset(0, 0.08) : Offset.zero,
    end: widget.reverse == true ? Offset.zero : Offset(0, 0.08),
  ).animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
        elevation: 30,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          // side: BorderSide(color: Colors.tealAccent),
        ),
        shadowColor: Color.fromARGB(255, 255, 8, 8),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.asset(
              widget.imagePath,
              filterQuality: FilterQuality.high,
              height: widget.height == null ? 200 : widget.height,
              width: widget.width == null ? 200.0 : widget.width,
              fit: widget.fit == null ? null : widget.fit,
            ),
            SizedBox(
              height: 10,
            ),
            widget.text == null?SizedBox():SansBold(widget.text, 15),
          ]),
        ),
      ),
    );
  }
}

class TabsMobile extends StatefulWidget {
  final text;
  final route;
  const TabsMobile({super.key, @required this.text, @required this.route});

  @override
  State<TabsMobile> createState() => _TabsMobileState();
}

class _TabsMobileState extends State<TabsMobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 20.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      height: 50.0,
      minWidth: 200.0,
      color: Colors.black,
      child: Text(
        widget.text,
        style: GoogleFonts.openSans(fontSize: 20.0, color: Colors.white),
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(widget.route);
      },
    );
  }
}
class AbelCustom extends StatelessWidget {
  final text; 
  final size; 
  final color; 
  final fontWeight; 
  const AbelCustom({super.key,  required this.text,  required this.size,  required this.color,  this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
 text, style: GoogleFonts.abel(fontSize:size,color: color==null? Colors.black: color, fontWeight: fontWeight == null? FontWeight. normal:fontWeight ),
    );
  }
}