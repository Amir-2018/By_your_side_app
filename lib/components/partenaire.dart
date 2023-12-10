import 'package:flutter/material.dart';

class Partenaire extends StatelessWidget {
  const Partenaire({super.key});

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
      body: Container(
        color: Color(0XFFF5E5A6),
        child: SingleChildScrollView(
          child: Container(

              //2 Use Color class with hexadecimal value

              margin: EdgeInsets.all(20), // Add margin of 10.0

              color: Colors.white,
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Column(children: [
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'Pourquoi etre notre partenaire',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    "La réponse simple à la question 'pourquoi devriez-vous être sur Scani Menu?' est que vous devriez être là où les clients affamés effectuent des recherches en ligne. Voici les avantages de Scani Menu:Cela ouvre la porte à des milliers de clients potentiels Vous obtenez des avis précieux C'est du marketing gratuit Vous pouvez augmenter vos ventes et gagner plus d'argent",
                    style: TextStyle(height: 1.5),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: ('Numero de téléhone'),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: ('Nom de l’enseigne'),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: ('Catégorie'),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: ('Adresse'),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: ('Matricule fiscale'),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  TextField(
                    maxLines: 5, // Set the maximum number of lines
                    decoration: InputDecoration(
                      labelText: 'Message',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  //MyButton(textTitle: 'Devenir partenaire'),
                  Container(
                      color: Colors.red[300],
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/product_description');
                        },
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 112, vertical: 10),
                            child: const Text(
                              'Enregistrer',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                      )),
                ]),
              )),
        ),
      ),
    );
  }
}
