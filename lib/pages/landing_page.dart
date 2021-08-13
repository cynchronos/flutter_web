import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget navItem({String title = 'Guides', int index = 0}) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: index == selectedIndex
                      ? FontWeight.w500
                      : FontWeight.w300,
                  color: Colors.black),
            ),
            Container(
              width: 66,
              height: 2,
              decoration: BoxDecoration(
                color: index == selectedIndex
                    ? Color(0xffFE998D)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'background.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          SingleChildScrollView(
            child: Column(children: [
              //! Navigation
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'logo.png',
                      width: 72,
                      height: 40,
                    ),
                    Row(
                      children: [
                        navItem(
                          title: 'Guides',
                          index: 0,
                        ),
                        SizedBox(width: 50),
                        navItem(title: 'Pricing', index: 1),
                        SizedBox(width: 50),
                        navItem(title: 'Team', index: 2),
                        SizedBox(width: 50),
                        navItem(title: 'Stories', index: 3),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Image.asset('accbtn.png', width: 163, height: 53),
                    )
                  ],
                ),
              ),
              //! Content
              SizedBox(height: 76),
              Image.asset(
                'logo-jumbo.png',
                width: 550,
              ),
              //! Footer
              SizedBox(height: 84),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('Icon_down.png', width: 24),
                  SizedBox(width: 13),
                  Text('Scroll to Learn More',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.black,
                      )),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
