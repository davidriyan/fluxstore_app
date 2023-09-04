import 'package:flutter/material.dart';
import 'package:fluxstore/presentation/pages/intro_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/images/welcome_page_image.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black38,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Welcome to Fluxstore!',
                  style: GoogleFonts.ptSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: const Color(0xffFFFFFF)),
                ),
                const SizedBox(height: 18),
                Text(
                  'The home for a fashionista',
                  style: GoogleFonts.ptSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: const Color(0xffFFFFFF)),
                ),
                const SizedBox(height: 87),
                Container(
                  height: 53,
                  width: 201,
                  decoration: BoxDecoration(
                      color: Colors.white24,
                      border: Border.all(color: const Color(0xffFFFFFF)),
                      borderRadius: BorderRadius.circular(29.5)),
                  child: Material(
                    borderRadius: BorderRadius.circular(29.5),
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(29.5),
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: const IntroPage(),
                                type: PageTransitionType.rightToLeft));
                      },
                      child: Center(
                        child: Text(
                          'Get Started',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.ptSans(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: const Color(0xffFFFFFF)),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 8.5,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
