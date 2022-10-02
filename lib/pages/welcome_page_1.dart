import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wink_to_the_future/pages/comming.dart';
import 'package:wink_to_the_future/pages/welcome_page2.dart';
import 'package:wink_to_the_future/texts/english.dart';

class WelcomePage1 extends StatefulWidget {
  const WelcomePage1({super.key});

  @override
  State<WelcomePage1> createState() => _WelcomePage1State();
}

class _WelcomePage1State extends State<WelcomePage1> {
  String _lenguages = "english";

  String get lenguages => _lenguages;

  set lenguages(String lenguages) {
    _lenguages = lenguages;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          colors: [
            Colors.grey,
            Colors.white,
          ],
        ),
      ),
      child: SafeArea(
        child: Column(
          //* main column
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Text(
                enWelcome,
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w700,
                    fontSize: 55,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  enchoseLeng,
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      color: Color.fromARGB(255, 7, 36, 59),
                      fontSize: 30,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 120.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(
                      onPressed: () {
                        lenguages = "turkish";
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const CommingSoon(),
                          ),
                        );
                      },
                      child: Text(
                        "Türkçe",
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(
                      onPressed: () {
                        lenguages = "english";
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const WelcomePage2(),
                          ),
                        );
                      },
                      child: Text(
                        "English",
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
