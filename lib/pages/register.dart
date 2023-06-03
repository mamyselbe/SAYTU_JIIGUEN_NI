import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formField = GlobalKey<FormState>();
  final fullnameController = TextEditingController();
  final phoneController = TextEditingController();
  final pseudoController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE6E8FC),
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
                        Text('INSCRIPTION',
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
                        TextFormField(
                          autocorrect: true,
                          keyboardType: TextInputType.text,
                          controller: fullnameController,
                          decoration: const InputDecoration(
                            labelText: "Prénom et nom",
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.person),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 15),
                        TextFormField(
                          autocorrect: false,
                          keyboardType: TextInputType.number,
                          controller: phoneController,
                          decoration: const InputDecoration(
                            labelText: "Numéro téléphone",
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.phone),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 15),
                        TextFormField(
                          autocorrect: false,
                          keyboardType: TextInputType.text,
                          controller: pseudoController,
                          decoration: const InputDecoration(
                            labelText: "Pseudo",
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.person_3),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 15),
                        TextFormField(
                          autocorrect: true,
                          keyboardType: TextInputType.emailAddress,
                          controller: emailController,
                          decoration: const InputDecoration(
                            labelText: "Adresse email",
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.email),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 15),
                        TextFormField(
                          autocorrect: false,
                          keyboardType: TextInputType.visiblePassword,
                          controller: passwordController,
                          decoration: const InputDecoration(
                            labelText: "Mot de passe",
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.lock),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 30),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/declarationMenu');
                          },
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF62A67),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Center(
                              child: Text(
                                'SUIVANT',
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
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Déjà un compte ?',
                        style: TextStyle(
                            fontFamily: 'Montserrat Regular', fontSize: 12),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: const Text(
                          'Connectez-vous',
                          style: TextStyle(
                              fontFamily: 'Montserrat Bold',
                              fontSize: 12,
                              color: Color(0xFFF62A67)),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
