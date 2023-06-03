import 'package:flutter/material.dart';
import 'package:saytu_jiiguen_ni/widgets/navbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE6E8FC),
      drawer: const NavbarMenu(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFFF62A67),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
            color: const Color(0xFFF62A67),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person_pin),
            color: const Color(0xFFF62A67),
          )
        ],
      ),
      // For tomorrow
      bottomNavigationBar: const Text('data'),
    );
  }
}
