import 'package:flutter/material.dart';
import 'package:interview/components/MyButton.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //2 Use Color class with hexadecimal value

      child: Container(
          margin: EdgeInsets.all(20), // Add margin of 10.0

          color: Colors.white,
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: const Column(children: [
              SizedBox(
                height: 30.0,
              ),
              Text(
                'Contacter ,nous',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: ('Nom et prénom'),
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
                  labelText: ('Numero de téléhone'),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              TextField(
                maxLines: 5, // Set the maximum number of lines
                decoration: InputDecoration(
                  labelText: 'Enter your text',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              MyButton(textTitle: 'Envoyer'),
              SizedBox(
                height: 15.0,
              ),
            ]),
          )),
    );
  }
}
