import 'package:flutter/material.dart';

// Page de bienvenu pour l'authentification
class AuthMenu extends StatelessWidget {
  const AuthMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE6E8FC),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Card(
              margin: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: const [
                    Text('Bienvenue',
                        style: TextStyle(
                            fontFamily: 'Montserrat Bold',
                            fontSize: 24,
                            color: Color(0xFFF62A67))),
                    Text('sur',
                        style: TextStyle(
                          fontFamily: 'Montserrat Bold',
                          fontSize: 24,
                        )),
                    Text('SAYTU JIIGUEEN ÑI',
                        style: TextStyle(
                            fontFamily: 'Montserrat Bold',
                            fontSize: 26,
                            color: Color(0xFF46951C))),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 60, 30, 60),
              child: Column(
                children: const [
                  Text(
                      'Votre assistante pour la suivie de votre cycle menstruel et de votre grossesse.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Montserrat Medium',
                          fontSize: 14,
                          height: 1.5)),
                  SizedBox(height: 60),
                  Text('DALAL AK JAM !',
                      style: TextStyle(
                          fontFamily: 'Montserrat Black',
                          fontSize: 20,
                          color: Color(0xFFF62A67))),
                ],
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 80,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/register');
                        },
                        style: ButtonStyle(
                            elevation: const MaterialStatePropertyAll(4),
                            backgroundColor: const MaterialStatePropertyAll(
                                Color(0xFFF62A67)),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)))),
                        child: const Text(
                          "S'INSCRIRE",
                          style: TextStyle(
                              fontFamily: 'Montserrat Bold', fontSize: 16),
                        )),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 80,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        style: ButtonStyle(
                            elevation: const MaterialStatePropertyAll(4),
                            backgroundColor:
                                const MaterialStatePropertyAll(Colors.white),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)))),
                        child: const Text(
                          'SE CONNECTER',
                          style: TextStyle(
                              fontFamily: 'Montserrat Bold',
                              fontSize: 16,
                              color: Color(0xFFF62A67)),
                        )),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
