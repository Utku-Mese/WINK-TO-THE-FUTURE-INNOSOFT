import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wink_to_the_future/pages/home_page.dart';
import 'package:wink_to_the_future/pages/save_the_world.dart';
import 'package:wink_to_the_future/pages/scientific_projeckts.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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
              padding: const EdgeInsets.only(left: 30.0),
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
                leading: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ScientificProjeckts(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.home),
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
                    textStyle: const TextStyle(color: Colors.black),
                  ),
                ),
                leading: const Icon(
                  FontAwesomeIcons.earthAfrica,
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
                    textStyle: const TextStyle(color: Color(0xff21B8CB)),
                  ),
                ),
                leading: const Icon(
                  FontAwesomeIcons.circleInfo,
                  color: Color(0xff21B8CB),
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
      body: Stack(
        children: [
          Row(
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
                            null;
                          },
                          icon: const Icon(FontAwesomeIcons.circleInfo),
                          color: const Color(0xff21B8CB),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 7),
                          child: Divider(
                            thickness: 2,
                            color: Color(0xff21B8CB),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 15),
                      child: Text(
                        'About Us',
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0, left: 5),
                    child: Text(
                      'Team mambers;',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: Colors.grey[800],
                          fontWeight: FontWeight.w500,
                          fontSize: 30,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Text(
                      '''
-Yaren Nur SOLMAZ
-Mehmet Utku MESE
-Yunus Emre OZEN
-Ali Efe BOZDAS
-Mahmut Sami 
-Abdullah Enes KARAPINAR''',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: Colors.grey[800],
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
