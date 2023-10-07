import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:brfideliza/screens/login/registration_screen.dart';
import '../main/home_screen.dart';
import 'package:brfideliza/screens/login/forgot_password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {

    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      validator: (value)
      {
        if(value!.isEmpty) {
          return ("Por favor, entre com seu E-mail");
        }
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value))
        {
          return ("Por favor, entre com um E-mail válido");
        }
        return null;
      },
      onSaved: (value)
      {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.mail),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "E-mail",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
    
    

    final passwordField = TextFormField(

      autofocus: false,
      controller: passwordController,
      obscureText: true,
      
      validator:(value) {
        RegExp regex = RegExp(r'^.{6,}$');
        if (value!. isEmpty) {
          return ("Senha é obrigatória para logar.");
        }
        if(!regex.hasMatch(value)) {
          return ("Senha incorreta");
        }
        return null;
      },
      onSaved: (value)
      {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.lock_rounded),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Senha",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    

    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      color: const Color.fromARGB(255, 0, 0, 0),
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          signIn(emailController.text, passwordController.text);
        },
        child: const Text("Logar", textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20, color: Colors.white,
          ),
        )),
    );


    return Scaffold(
      
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
              
                  SizedBox(
                    height: 200,
                    child: Image.asset(
                      "assets/logo-brfideliza.png",
                      fit: BoxFit.contain,
                    )),
                  const SizedBox(height: 35),

                  emailField,
                  const SizedBox(height: 10),
                  
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                                      
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotPasswordScreen()));
                          },
                          child: const Text(
                            "Esqueceu a senha?", 
                            style: TextStyle(
                              color: Colors.blue,
                    
                            ),
                          ),
                        ),
                      ],
                                      ),
                    ),
                  
                  
                  passwordField,
                  const SizedBox(height: 35),

                  
                  loginButton,
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: <Widget>[
                     const Text("Não possui conta? "),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const RegistrationScreen()));
                        },
                        child: const Text(
                          "Clique aqui", 
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      )
    ));
    
  }

  void signIn(String email, String password) async
  {
    if(_formKey.currentState!.validate()) {
      await _auth
      .signInWithEmailAndPassword(email: email, password: password)
      .then((uid) => {
        Fluttertoast.showToast(msg: "Login realizado com sucesso"),
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const HomeScreen())),
      })
      // ignore: body_might_complete_normally_catch_error
      .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }
}