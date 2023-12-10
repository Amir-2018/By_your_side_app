import 'package:flutter/material.dart';

class ListImages extends StatelessWidget {
  final String selectedOption = ''; // Variable to store the selected option

  const ListImages({super.key});

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
            color: Color(0XFFF5E5A6),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Table(
                    children: [
                      const TableRow(
                        children: [
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Nom'),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Le score'),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Gouvernorat'),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Catégorie'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 22.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "Chercher"),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                /* Container(
                  child: MyButton(textTitle: 'Filtrer'),
                ),*/
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(children: [
                    SizedBox(height: 15.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/Details');
                          },
                          child: Stack(children: [
                            Image.asset('chercher/img11.png'),
                            Positioned(
                              top: 20.0,
                              right: 20.0,
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 30.0,
                              ),
                            ),
                          ]),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Sakka Catering&Events'),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Rate 5 stars'),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(height: 15.0),
                      ],
                    ),
                    Column(
                      children: [
                        Stack(children: [
                          Image.asset('chercher/img2.png'),
                          Positioned(
                            top: 20.0,
                            right: 20.0,
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 30.0,
                            ),
                          ),
                        ]),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Sakka Catering&Events'),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Rate 2 stars'),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    Column(
                      children: [
                        Stack(children: [
                          Image.asset('chercher/img7.png'),
                          Positioned(
                            top: 20.0,
                            right: 20.0,
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 30.0,
                            ),
                          ),
                        ]),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Sakka Catering&Events'),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Rate 3 stars'),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    Column(
                      children: [
                        Stack(children: [
                          Image.asset('chercher/img6.png'),
                          Positioned(
                            top: 20.0,
                            right: 20.0,
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 30.0,
                            ),
                          ),
                        ]),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Sakka Catering&Events'),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Rate 3 stars'),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    Column(
                      children: [
                        Stack(children: [
                          Image.asset('chercher/img4.png'),
                          Positioned(
                            top: 20.0,
                            right: 20.0,
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 30.0,
                            ),
                          ),
                        ]),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Sakka Catering&Events'),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Rate 3 stars'),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    Column(
                      children: [
                        Stack(children: [
                          Image.asset('chercher/img5.png'),
                          Positioned(
                            top: 20.0,
                            right: 20.0,
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 30.0,
                            ),
                          ),
                        ]),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Sakka Catering&Events'),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Rate 3 stars'),
                      ],
                    ),
                    Row(
                      children: [Container()],
                    )
                  ]),
                ),
              ],
            )),
      ),
    );
  }
}
