import 'package:flutter/material.dart';
import 'package:login_flutter/screens/registration_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {

    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value)
      {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
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
      
      onSaved: (value)
      {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock_rounded),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Senha",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Color.fromARGB(255, 60, 202, 10),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {},
        child: Text("Logar", textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold,
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
                  SizedBox(height: 35),

                  emailField,
                  SizedBox(height: 25),
                  
                  passwordField,
                  SizedBox(height: 35),

                  loginButton,
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: <Widget>[
                      Text("Não possui conta? "),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationScreen()));
                        },
                        child: Text(
                          "Clique aqui", 
                          style: TextStyle(
                            color: const Color.fromARGB(255, 60, 202, 10),
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold, fontSize: 15),
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
}