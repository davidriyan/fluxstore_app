import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PagePertama extends StatelessWidget {
  const PagePertama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff464447),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 1.9,
                width: double.infinity,
                color: Colors.white,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: const Color(0xff464447),
                ),
              ),
            ],
          ),
          Center(
            child: Padding(
              padding:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 10),
              child: Column(
                children: [
                  Text(
                    'Discover something new',
                    style: GoogleFonts.ptSans(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    'Special new arrivals just for you',
                    style: GoogleFonts.ptSans(
                        fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width / 1.4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffE7E8E9)),
                    child: Image.asset(
                      'assets/images/image_intro_pertama.png',
                      fit: BoxFit.contain,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PageKedua extends StatelessWidget {
  const PageKedua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff464447),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 1.9,
                width: double.infinity,
                color: Colors.white,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: const Color(0xff464447),
                ),
              ),
            ],
          ),
          Center(
            child: Padding(
              padding:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 10),
              child: Column(
                children: [
                  Text(
                    'Update trendy outfit',
                    style: GoogleFonts.ptSans(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    'Favorite brands and hottest trends',
                    style: GoogleFonts.ptSans(
                        fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width / 1.4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffE7E8E9)),
                    child: Image.asset(
                      'assets/images/image_intro_kedua.png',
                      fit: BoxFit.contain,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PageKetiga extends StatelessWidget {
  const PageKetiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff464447),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 1.9,
                width: double.infinity,
                color: Colors.white,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: const Color(0xff464447),
                ),
              ),
            ],
          ),
          Center(
            child: Padding(
              padding:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 10),
              child: Column(
                children: [
                  Text(
                    'Explore your true style',
                    style: GoogleFonts.ptSans(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    'Relax and let us bring the style to you',
                    style: GoogleFonts.ptSans(
                        fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width / 1.4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffE7E8E9)),
                    child: Image.asset(
                      'assets/images/image_intro_ketiga.png',
                      fit: BoxFit.contain,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
