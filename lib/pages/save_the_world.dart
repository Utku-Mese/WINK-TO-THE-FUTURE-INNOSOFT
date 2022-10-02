import 'package:babylonjs_viewer/babylonjs_viewer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wink_to_the_future/pages/about.dart';
import 'package:wink_to_the_future/pages/home_page.dart';
import 'package:wink_to_the_future/pages/scientific_projeckts.dart';

class SaveTheWorld extends StatefulWidget {
  const SaveTheWorld({super.key});

  @override
  State<SaveTheWorld> createState() => _SaveTheWorldState();
}

class _SaveTheWorldState extends State<SaveTheWorld> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  double thisYear = 2016;
  String sours = 'assets/vectors/Now.glb';
  double year = 2022;

  void setYear(double year) {
    setState(() {
      int a = year.toInt();
      if (a > 1938 && year < 1942) {
        sours = 'assets/vectors/-3.glb';
      } else if (year == 1965) {
        sours = 'assets/vectors/-2.glb';
      } else if (year == 1991) {
        sours = 'assets/vectors/-1.glb';
      } else if (year == 2041) {
        sours = 'assets/vectors/+1.glb';
      } else if (year == 2067) {
        sours = 'assets/vectors/+2.glb';
      } else if (year == 2095) {
        sours = 'assets/vectors/+3.glb';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        backgroundColor: Colors.white70.withOpacity(0.90),
        child: ListView(
          children: [
            DrawerHeader(child: Image.asset('assets/2.png')),
            const SizedBox(
              height: 54,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MyHomePage(),
                    ),
                  );
                },
                title: Text(
                  'Home page',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(color: Colors.black),
                  ),
                ),
                leading: const Icon(
                  Icons.home,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SaveTheWorld(),
                    ),
                  );
                },
                title: Text(
                  'Save the world',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(color: Color(0xff21B8CB)),
                  ),
                ),
                leading: const Icon(
                  FontAwesomeIcons.earthAfrica,
                  color: Color(0xff21B8CB),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ScientificProjeckts(),
                    ),
                  );
                },
                title: Text(
                  'Scientific projects',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(color: Colors.black),
                  ),
                ),
                leading: const Icon(
                  FontAwesomeIcons.flask,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const About(),
                    ),
                  );
                },
                title: Text(
                  'About',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(color: Colors.black),
                  ),
                ),
                leading: const Icon(
                  FontAwesomeIcons.circleInfo,
                  color: Colors.black,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 250.0, left: 25),
              child: ListTile(
                title: Text('Made By INNOSOFT'),
              ),
            ),
          ],
        ),
      ),
      body: Row(
        children: [
          Column(
            children: [
              Column(
                children: [
                  Container(
                    height: size.height,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.grey, blurRadius: 5),
                      ],
                    ),
                    child: Column(
                      children: [
                        SafeArea(
                          child: IconButton(
                            onPressed: () =>
                                _scaffoldKey.currentState?.openDrawer(),
                            icon: const Icon(
                              Icons.menu,
                              size: 35,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 45,
                        ),
                        RotatedBox(
                          quarterTurns: -1,
                          child: Text(
                            'INNOSOFT',
                            style: GoogleFonts.inter(
                                textStyle: const TextStyle(fontSize: 20)),
                          ),
                        ),
                        const SizedBox(
                          height: 45,
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const MyHomePage(),
                              ),
                            );
                          },
                          icon: const Icon(Icons.home),
                          color: Colors.black,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 7),
                          child: Divider(
                            thickness: 2,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const SaveTheWorld(),
                              ),
                            );
                          },
                          icon: const Icon(FontAwesomeIcons.earthAfrica),
                          color: const Color(0xff21B8CB),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 7),
                          child: Divider(
                            thickness: 2,
                            color: Color(0xff21B8CB),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ScientificProjeckts(),
                              ),
                            );
                          },
                          icon: const Icon(FontAwesomeIcons.flask),
                          color: Colors.black,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 7),
                          child: Divider(
                            thickness: 2,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const About(),
                              ),
                            );
                          },
                          icon: const Icon(FontAwesomeIcons.circleInfo),
                          color: Colors.black,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 7),
                          child: Divider(
                            thickness: 2,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 300,
                    width: 340,
                    child: BabylonJSViewer(src: sours),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              const Text('Year slider'),
              const SizedBox(
                height: 15,
              ),
              ConstrainedBox(
                constraints: const BoxConstraints.tightFor(width: 300),
                child: Slider.adaptive(
                  thumbColor: const Color(0xff21B8CB),
                  activeColor: const Color(0xff21B8CB),
                  inactiveColor: const Color(0xff21B8CB),
                  value: year,
                  min: 1940,
                  max: 2092,
                  divisions: 6,
                  label: year.round().toString(),
                  onChanged: (newYear) {
                    setState(() {
                      debugPrint('$newYear');

                      year = newYear;
                    });
                    setYear(newYear);
                  },
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              const Text('Tempareture anomaly(C)'),
              Image.asset(
                'assets/SicaklikSimdi.png',
                height: 220,
              )
            ],
          ),
        ],
      ),
    );
  }
}
