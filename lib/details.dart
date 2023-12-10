import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Color(0XFFF5E5A6)),
              child: Center(
                child: Text(
                  'BY YOUR SIDE ',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.pushNamed(context, '/first');
              },
            ),
            ListTile(
              title: Text('Services'),
              leading: Icon(Icons.settings),
              onTap: () {
                Navigator.pushNamed(context, '/ListImages');
              },
            ),
            ListTile(
              title: Text('Devenir partenaire'),
              leading: Icon(Icons.person_add),
              onTap: () {
                Navigator.pushNamed(context, '/partenaire');
                // Handle item 2 tap
              },
            ),
            ListTile(
              title: Text('Déconnexion'),
              leading: Icon(Icons.exit_to_app),
              onTap: () {
                Navigator.pushNamed(context, '/');
                // Handle item 2 tap
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black), // Set icon color

        title: const Text(
          'BY YOUR SIDE',
          style: TextStyle(
              fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Sakka Catering&Events',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Rating 5 stars',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  padding: EdgeInsets.all(20),
                  child: Image.asset('chercher/img11.png')),
              Row(
                children: [Container(), Container()],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Description',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: const Text(
                  "Chez vous ou ailleurs.Pour vos mariages, vos fiançailles, vos cérémonies ou pour offrir un plat équilibré et sain à vos enfants chaque jour à l'école.Notre équipe est à votre entière disposition pour répondre a vos caprices.Avec SC&E, savourez!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 1.5, // Adjust the line height here
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Détails",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  const ListTile(
                    leading: Icon(
                      Icons.phone,
                      size: 20.0,
                    ),
                    title: Text(
                      '+216 93 379 344',
                      style: TextStyle(fontSize: 15.0),
                    ),
                    // Add any additional properties or widgets as needed
                  ),

                  const ListTile(
                    leading: Icon(
                      Icons.email,
                      size: 20.0,
                    ),
                    title: Text(
                      'amir.maalaoui27@gmail.com',
                      style: TextStyle(fontSize: 15.0),
                    ),
                    // Add any additional properties or widgets as needed
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.location_on,
                      size: 20.0,
                    ),
                    title: Text(
                      'Rue Kortoba 5100 Mahdia, Tunisie',
                      style: TextStyle(fontSize: 15.0),
                    ),
                    // Add any additional properties or widgets as needed
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.access_time,
                      size: 20.0,
                    ),
                    title: Text(
                      'Ouvert maintenant :   07:00  - 22:00 ',
                      style: TextStyle(fontSize: 15.0),
                    ),
                    // Add any additional properties or widgets as needed
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        color: Color(0XFFF5E5A6),
                        height: 30,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Center(child: Text('Tout')),
                      )),
                      Expanded(
                          child: Center(
                              child: Container(
                        child: Text('Sandwitch'),
                      ))),
                      Expanded(
                          child: Center(
                              child: Container(
                        child: Text('Boissons'),
                      ))),
                    ],
                  ),
                  Column(
                    children: [
                      Card(
                        margin: EdgeInsets.all(25),
                        elevation: 8.0,
                        child: Column(children: [
                          Container(
                              margin: const EdgeInsets.all(25),
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(25),
                                    child: Image.asset('chercher/img4.png'),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const Text("Russe Noisette"),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const Text("3,200 Dt  2,500 Dt"),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30, vertical: 15),
                                    color: const Color(0XFFFCC4AB),
                                    child: const Text(
                                      "Details",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.all(25),
                                    child: Image.asset('chercher/img3.png'),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const Text("Russe Noisette"),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const Text("3,200 Dt  2,500 Dt"),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30, vertical: 15),
                                    color: const Color(0XFFFCC4AB),
                                    child: const Text(
                                      "Details",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.all(25),
                                    child: Image.asset('chercher/img2.png'),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const Text("Russe Noisette"),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  const Text("3,200 Dt  2,500 Dt"),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30, vertical: 15),
                                    color: const Color(0XFFFCC4AB),
                                    child: const Text(
                                      "Details",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              )),
                          Container(
                            margin: const EdgeInsets.all(25),
                            child: Image.asset('chercher/img1.png'),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text("Russe Noisette"),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text("3,200 Dt  2,500 Dt"),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 15),
                            color: const Color(0XFFFCC4AB),
                            child: const Text(
                              "Details",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                        ]),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  )

                  // Add more ListTiles as needed
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
