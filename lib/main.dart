import 'package:flutter/material.dart';
import 'package:interview/Ajouter_testaurant.dart';
import 'package:interview/Compte.dart';
import 'package:interview/ProductDescription.dart';
import 'package:interview/calcul.dart';
import 'package:interview/components/partenaire.dart';
import 'package:interview/details.dart';
import 'package:interview/first.dart';
import 'package:interview/home.dart';
import 'package:interview/listimages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/calc': (context) => const Calc(),
        '/': (context) => const Home(),
        '/first': (context) => const First(),
        '/compte': (context) => const Compte(),
        '/partenaire': (context) => const Partenaire(),
        '/ListImages': (context) => const ListImages(),
        '/Details': (context) => const Details(),
        '/ajouter': (context) => const Ajouter_Restaurant(),
        '/product_description': (context) => const Product_Description(),
      },
    );
  }
}
