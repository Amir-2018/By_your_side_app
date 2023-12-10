import 'package:flutter/material.dart';

class Ajouter_Restaurant extends StatelessWidget {
  const Ajouter_Restaurant({super.key});

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
                  'Scani Manu',
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
          'Ajouter',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
      body: Center(
        child: Container(
          color: Color(0XFFF5E5A6),
          //2 Use Color class with hexadecimal value

          child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(15.0),
              child: Center(
                child: Column(children: [
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'CONTINUE LA CREATION',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),

                  SizedBox(
                    height: 15.0,
                  ),
                  ImageInsertionTextField(),
                  SizedBox(
                    height: 15.0,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  //MyButton(textTitle: 'Enregistrer'),

                  Text(
                    'AJOUTER DES PRODUITS',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                      color: Colors.red[300],
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/first');
                        },
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 55, vertical: 10),
                            child: const Text(
                              '+',
                              style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                      )),

                  SizedBox(
                    height: 30.0,
                  ),
                ]),
              )),
        ),
      ),
    );
  }
}

class ImageInsertionTextField extends StatefulWidget {
  @override
  _ImageInsertionTextFieldState createState() =>
      _ImageInsertionTextFieldState();
}

class _ImageInsertionTextFieldState extends State<ImageInsertionTextField> {
  TextEditingController _textEditingController = TextEditingController();

  void _insertImage() {
    // Add your image insertion logic here
    // You can use ImagePicker or another method to choose an image
    // For simplicity, let's just set a placeholder image URL for now
    setState(() {
      _textEditingController.text +=
          ' ![Image](https://example.com/your-image.jpg) ';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(16.0),
          child: TextField(
            controller: _textEditingController,
            maxLines: null, // Allow multiple lines
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Ecrire ici...',
            ),
          ),
        ),
        ElevatedButton(
          onPressed: _insertImage,
          child: Text('Insert Image'),
        ),
      ],
    );
  }
}
