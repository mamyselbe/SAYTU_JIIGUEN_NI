import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formField = GlobalKey<FormState>();
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
                        Text('CONNEXION',
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
                        Image.asset(
                          'assets/images/logo.png',
                          width: 150,
                          height: 150,
                        ),
                        const SizedBox(height: 30),
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
                            Navigator.pushNamed(context, '/home');
                          },
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF62A67),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Center(
                              child: Text(
                                'SE CONNECTER',
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
                        "Vous n'avez pas encore de compte ?",
                        style: TextStyle(
                            fontFamily: 'Montserrat Regular', fontSize: 12),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/register');
                        },
                        child: const Text(
                          'Inscrivez-vous',
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
