import 'package:flutter/material.dart';
import 'package:saytu_jiiguen_ni/pages/cycle_declaration.dart';
import 'package:saytu_jiiguen_ni/pages/home.dart';
import 'package:saytu_jiiguen_ni/pages/login.dart';
import 'package:saytu_jiiguen_ni/pages/pregnancy_declaration.dart';
import 'package:saytu_jiiguen_ni/pages/register.dart';
import 'package:saytu_jiiguen_ni/pages/welcome.dart';
import 'package:saytu_jiiguen_ni/widgets/declaration_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Saytu Jiigueen Ñi',
      routes: {
        '/': (context) => const WelcomePage(),
        '/register': (context) => const Register(),
        '/login': (context) => const Login(),
        '/declarationMenu': (context) => const DeclarationMenu(),
        '/home': (context) => const Home(),
        '/cycleDeclaration': (context) => const CycleDeclaration(),
        '/pregnancyDeclaration': (context) => const PregnancyDeclaration(),
      },
    );
  }
}
