import 'package:flutter/material.dart';
import 'package:interview/components/contact.dart';

class First extends StatelessWidget {
  const First({super.key});

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
          padding: EdgeInsets.all(25.0),
          color: Color(0XFFF5E5A6),
          child: Column(children: [
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: const Text(
                  "Le bon moment pour manger, c'est quand vous voulez!"),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Saisir l'identifiant du menu",
                    border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
                child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/ListImages');
              },
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
                  color: Colors.white,
                  child: const Text(
                    'Consulter nos services',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            )),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(child: Image.asset('images/pizza.png')),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: const Text(
                  "Scani Menu vise à connecter tout le monde avec leurs endroits préférés pour manger"),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: const Text(
                  "Scani Menu vise à connecter tout le monde avec leurs endroits préférés pour manger"),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(child: Image.asset('images/Illustration1.png')),
            SizedBox(
              height: 50.0,
            ),
            Container(
              child: const Text(
                  "Il faut être géolocalisé pour trouver les commerçants partenaires locaux."),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(child: Image.asset('images/Illustration2.png')),
            SizedBox(
              height: 50.0,
            ),
            Container(
              child: const Text(
                  "Découvrez les plats et produits de vos enseignes préférées."),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(child: Image.asset('images/Illustration4.png')),
            SizedBox(
              height: 50.0,
            ),
            Container(
              child: const Text(
                  "Prêt à faire partie de notre réseau de partenaires?"),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              child: const Text(
                  "Nous vous aidons à présenter vos plats et produits de bonne qualité  de façon attractive."),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(child: Image.asset('images/Illustration3.png')),
            SizedBox(
              height: 50.0,
            ),
            Container(
              child: const Text(
                  "Prêt à faire partie de notre réseau de partenaires?"),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              child: const Text(
                  "Nous vous aidons à présenter vos plats et produits de bonne qualité  de façon attractive."),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
                child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/partenaire');
              },
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
                  color: Colors.white,
                  child: const Text(
                    'Devenir partenaire',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            )),
            SizedBox(
              height: 50.0,
            ),
            Container(child: Image.asset('images/Chef-pana.png')),
            SizedBox(
              height: 50.0,
            ),
            SizedBox(
              height: 50.0,
            ),
            Contact()
          ]),
        ),
      ),
    );
  }
}
