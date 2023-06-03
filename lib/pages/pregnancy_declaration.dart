import 'package:flutter/material.dart';

class PregnancyDeclaration extends StatefulWidget {
  const PregnancyDeclaration({super.key});

  @override
  State<PregnancyDeclaration> createState() => _PregnancyDeclarationState();
}

class _PregnancyDeclarationState extends State<PregnancyDeclaration> {
  final _formField = GlobalKey<FormState>();
  final dateDebutGrossesseController = TextEditingController();
  final dateProchainRvRegleController = TextEditingController();
  final lieuRvController = TextEditingController();
  final medecinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(230, 232, 252, 1),
      body: SafeArea(
        child: SingleChildScrollView(
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
                        Text('Déclarer ma grossesse',
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
                  padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                  child: Form(
                    key: _formField,
                    child: Column(
                      children: [
                        const SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Quelle est la date de début de votre grossesse ?',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: 'Montserrat Medium', fontSize: 14),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 280,
                              height: 50,
                              child: TextFormField(
                                autocorrect: false,
                                keyboardType: TextInputType.datetime,
                                controller: dateDebutGrossesseController,
                                decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    prefixIcon: Icon(Icons.date_range),
                                    filled: true,
                                    fillColor: Colors.white,
                                    focusColor: Colors.red),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        const SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Quelle est la date de votre prochain  rendez-vous ?',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontFamily: 'Montserrat Medium', fontSize: 14),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 280,
                              height: 50,
                              child: TextFormField(
                                autocorrect: false,
                                keyboardType: TextInputType.datetime,
                                controller: dateProchainRvRegleController,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.date_range),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        const SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Dans quel établissement effectuez-vous vos visites ?',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: 'Montserrat Medium', fontSize: 14),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 280,
                              height: 50,
                              child: TextFormField(
                                autocorrect: false,
                                keyboardType: TextInputType.text,
                                controller: lieuRvController,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.local_hospital),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        const SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Quel est le nom de votre médecin ?',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontFamily: 'Montserrat Medium', fontSize: 14),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 280,
                              height: 50,
                              child: TextFormField(
                                autocorrect: false,
                                keyboardType: TextInputType.text,
                                controller: medecinController,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.person_pin_outlined),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/home');
                          },
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(246, 42, 103, 1),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Center(
                              child: Text(
                                'ENREGISTRER',
                                style: TextStyle(
                                  fontFamily: 'Montserrat Bold',
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
