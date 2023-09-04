import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/page_view_item.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final PageController _controller = PageController();
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        currentPage = _controller.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff464447),
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _controller,
                children: const [
                  PagePertama(),
                  PageKedua(),
                  PageKetiga(),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 13),
            buildIndicator(),
            const SizedBox(height: 53),
            Container(
              height: 53,
              width: 223,
              decoration: BoxDecoration(
                  color: Colors.white24,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(29.5)),
              child: Material(
                borderRadius: BorderRadius.circular(29.5),
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(29.5),
                  child: Center(
                    child: Text(
                      'Shopping now',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.ptSans(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 53),
          ],
        ));
  }

  Widget buildIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(3, (int index) {
        return Container(
          width: 6,
          height: 6,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            shape: BoxShape.circle,
            color:
                currentPage == index ? Colors.white : const Color(0xff464447),
          ),
        );
      }),
    );
  }
}
