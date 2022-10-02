import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wink_to_the_future/pages/about.dart';
import 'package:wink_to_the_future/pages/save_the_world.dart';
import 'package:wink_to_the_future/pages/scientific_projeckts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
              padding: const EdgeInsets.only(left: 40.0),
              child: ListTile(
                title: Text(
                  'Home page',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(color: Color(0xff21B8CB)),
                  ),
                ),
                leading: const Icon(
                  Icons.home,
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
                        const Icon(
                          Icons.home,
                          color: Color(0xff21B8CB),
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
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: size.width * 80 / 100,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 236, 235, 235),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 10,
                                color: Colors.grey,
                                spreadRadius: 5,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                decoration:
                                    const BoxDecoration(shape: BoxShape.circle),
                                child: Image.asset(
                                  'assets/+3.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  'The world will become like that if we continue to live like that. See more futuristic animated visualization',
                                  style: GoogleFonts.inter(
                                    textStyle: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: size.width * 80 / 100,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 236, 235, 235),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 10,
                                color: Colors.grey,
                                spreadRadius: 5,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/qrCode.png',
                                width: 175,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  'We talked about different types of changes on earth so far. And now here’s the turn how these effects change our daily lifeYou probably know what melanoma is. İf you don’t know, It is a type of cancer it effects directly your skin. Don’t disregard this type of cancer because of skin is not as important than other organs, It can be fatal.According to National Cancer Institute, age-adjusted rates for new melanoma of the skin cases have been rising on average 1.2% each year over 2010–2019. Age-adjusted death rates have been falling on average 3.3% each year over 2011–2020. 5-year relative survival trends are shown below.To sum up every year more people die from melanoma and these people die earlier year by year. And this result shows us that Uv light is too dangerous currently, and if we don’t make provision against Uv light It became more dangerous.SNAPCHAT QR\nIt can be your first time to be not happy to try a new camera filter.Try to our AI-associated filter that you can see yourself whit melanoma (skin cancer).',
                                  style: GoogleFonts.inter(
                                    textStyle: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: size.width * 80 / 100,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 236, 235, 235),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50)),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                color: Colors.grey,
                                spreadRadius: 5,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50),
                                      topRight: Radius.circular(50)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 30.0, bottom: 25),
                                  child: Image.asset(
                                    'assets/msamiboz_Little_kid_do_spray_painting_on_the_wall_She_drowing_a_f3f76b76-6f8a-4fd7-8bdb-153170490443.png',
                                    fit: BoxFit.fill,
                                    width: size.width * 70 / 100,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  'The world will become like that if we continue to live like that. See more futuristic animated visualization',
                                  style: GoogleFonts.inter(
                                    textStyle: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
