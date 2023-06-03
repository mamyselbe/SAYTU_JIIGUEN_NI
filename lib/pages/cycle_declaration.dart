import 'package:flutter/material.dart';

class CycleDeclaration extends StatefulWidget {
  const CycleDeclaration({super.key});

  @override
  State<CycleDeclaration> createState() => _CycleDeclarationState();
}

class _CycleDeclarationState extends State<CycleDeclaration> {
  final _formField = GlobalKey<FormState>();
  final dateRegleController = TextEditingController();
  final dureeRegleController = TextEditingController();
  final dureeCycleController = TextEditingController();

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
                        Text('Déclarer mon cycle',
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
                            'Quelle est la date d’apparition de tes derniers régles ?',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: 'Montserrat Medium', fontSize: 16),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 280,
                              child: TextFormField(
                                autocorrect: false,
                                keyboardType: TextInputType.datetime,
                                controller: dateRegleController,
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
                            'Quelle est en moyenne la durée de vos régles ?',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontFamily: 'Montserrat Medium', fontSize: 16),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 280,
                              child: TextFormField(
                                autocorrect: false,
                                keyboardType: TextInputType.number,
                                controller: dureeRegleController,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.numbers),
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
                            'Quelle est la durée moyenne de votre cycle menstruel ?',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: 'Montserrat Medium', fontSize: 16),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 280,
                              child: TextFormField(
                                autocorrect: false,
                                keyboardType: TextInputType.number,
                                controller: dureeCycleController,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.numbers),
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
