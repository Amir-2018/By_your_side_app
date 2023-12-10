import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Center(
          child: Container(
            color: Color(0XFFF5E5A6),
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
                      'Connectez-vous au compte',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
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
                        labelText: ('Password'),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'Mot de passe oublié',
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    //MyButton(textTitle: 'Login'),
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
                                'Login',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                        )),
                    SizedBox(
                      height: 30.0,
                    ),
                    Center(
                      child: GestureDetector(
                        child: Text(
                          "S’inscrire",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/compte');
                        },
                      ),
                    ),
                  ]),
                )),
          ),
        ),
      ),
    );
  }
}
