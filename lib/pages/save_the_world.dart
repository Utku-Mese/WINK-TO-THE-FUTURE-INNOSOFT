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

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        backgroundColor: Colors.white70,
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
                    textStyle: const TextStyle(color: Colors.red),
                  ),
                ),
                leading: const Icon(
                  FontAwesomeIcons.earthAfrica,
                  color: Colors.red,
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
          ],
        ),
      ),
      body: Stack(
        children: [
          const Center(child: Text('save')),
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
                      color: Colors.red,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 7),
                      child: Divider(
                        thickness: 2,
                        color: Colors.red,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ScientificProjeckts(),
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
    );
  }
}
