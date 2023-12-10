import 'package:flutter/material.dart';

class Compte extends StatelessWidget {
  const Compte({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black), // Set icon color

        title: const Text(
          'CALC EXAMPLE',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
      body: Center(
        child: Container(
          color: Color(0XFFF5E5A6),
          //2 Use Color class with hexadecimal value

          child: Container(
              margin: EdgeInsets.all(45), // Add margin of 10.0

              color: Colors.white,
              padding: EdgeInsets.all(15.0),
              child: Center(
                child: Column(children: [
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'Créer à votre compte',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: ('Username'),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: ('Email'),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: ('Password'),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  //MyButton(textTitle: 'Enregistrer'),
                  SizedBox(
                    height: 15.0,
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
                              'Enregistrer',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                      )),
                  SizedBox(
                    height: 30.0,
                  ),
                  GestureDetector(
                    child: Text(
                      "J'ai un compte",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/');
                    },
                  ),
                ]),
              )),
        ),
      ),
    );
  }
}
