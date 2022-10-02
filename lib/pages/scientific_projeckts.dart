import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wink_to_the_future/pages/about.dart';
import 'package:wink_to_the_future/pages/home_page.dart';
import 'package:wink_to_the_future/pages/save_the_world.dart';

class ScientificProjeckts extends StatefulWidget {
  const ScientificProjeckts({super.key});

  @override
  State<ScientificProjeckts> createState() => _ScientificProjecktsState();
}

class _ScientificProjecktsState extends State<ScientificProjeckts> {
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
                    textStyle: const TextStyle(color: Color(0xff21B8CB)),
                  ),
                ),
                leading: const Icon(
                  FontAwesomeIcons.flask,
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
                                  'assets/one.jpeg',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  '''EXTINCTION OF SPECIES

         Some scientists at Stanford University have uncovered evidence that the largest extinction in Earth's history was caused by global warming, which left ocean animals unable to breathe.

         The United Nations Biodiversity and Ecosystem Services Intergovernmental Science-Policy Platform reported that approximately 1 million animal and plant species are threatened with extinction.

         More than 40 percent of amphibian species, about 33 percent of sharks, shark relatives and reef-forming corals, and more than 33 percent of all marine mammals are threatened, according to the report.''',
                                  style: GoogleFonts.inter(
                                    textStyle: const TextStyle(
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
                                'assets/tree.jpeg',
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  '''POPULATION GROWTH
                                  
       82 percent of the US-based members of the American Association for the Advancement of Science think the growing world population will be a big problem.

       The UN predicts that the population will continue to increase throughout the 21st century, reaching somewhere between 9.6 billion and 12.3 billion by 2100.''',
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
                                  padding: const EdgeInsets.only(bottom: 25),
                                  child: Image.asset(
                                    'assets/two.jpeg',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  '''DEPLETION OF THE OZONE LAYER

         Environmental scientist Robyn Schofield of the University of Melbourne in Australia says the findings are frightening and important.

         Björn-Martin Sinnhuber, an atmospheric scientist at the Karlsruhe Institute of Technology in Germany, says the team's analysis is crucial.

         Analysis shows that Antarctic ozone will not return to pre-1980 levels until long after 2100.''',
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
                                'assets/four.jpeg',
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  '''CLIMATE CHANGE

       American Science Association; Worldwide observations make it clear that climate change is occurring, and rigorous scientific research has shown that greenhouse gases emitted by human activities are the primary driver.

       American Meteorological Society; The warming observed since the middle of the twentieth century indicates that human influence is highly probable.''',
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
