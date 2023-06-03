import 'package:flutter/material.dart';

class DeclarationMenu extends StatelessWidget {
  const DeclarationMenu({super.key});

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
                    Text('Félicitation pour cette première étape',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Montserrat Bold',
                            fontSize: 24,
                            color: Color(0xFFF62A67))),
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
                  Text("Que souhaitez-vous pour aujourd'hui ?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Montserrat Medium',
                          fontSize: 20,
                          height: 1.5)),
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
                          Navigator.pushNamed(context, '/cycleDeclaration');
                        },
                        style: ButtonStyle(
                            elevation: const MaterialStatePropertyAll(4),
                            backgroundColor: const MaterialStatePropertyAll(
                                Color(0xFFF62A67)),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)))),
                        child: const Text(
                          "Je veux déclarer mon cycle",
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
                          Navigator.pushNamed(context, '/pregnancyDeclaration');
                        },
                        style: ButtonStyle(
                            elevation: const MaterialStatePropertyAll(4),
                            backgroundColor: const MaterialStatePropertyAll(
                                Color(0xFFF62A67)),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)))),
                        child: const Text(
                          'Je veux suivre ma grossesse',
                          style: TextStyle(
                              fontFamily: 'Montserrat Bold',
                              fontSize: 16,
                              color: Colors.white),
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
