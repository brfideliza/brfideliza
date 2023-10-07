import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {

  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  Future passwordReset() async {
    try {
      await FirebaseAuth.instance.
        sendPasswordResetEmail(email: emailController.text.trim());
        // ignore: use_build_context_synchronously
        showDialog(context: context, builder: (context) {
        return const AlertDialog(
          content: Text('Link enviado! Cheque seu e-mail'),
        );
      });
    } on FirebaseAuthException catch (e) {
      print(e);
      // ignore: use_build_context_synchronously
      showDialog(context: context, builder: (context) {
        return const AlertDialog(
          content: Text('Erro: E-mail não encontrado'),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Digite seu email e enviaremos a você um link para resetar sua senha.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
              ),
          ),
                  
          const SizedBox(height: 30),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.mail),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10)
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(10), 
                ),
                hintText: 'E-mail',
                filled: true,
                ),
              ),
            ),

            const SizedBox(height: 10),

            MaterialButton(
              onPressed: passwordReset,
              color: Colors.black,
              textColor: Colors.white,
              child: const Text('Confirmar'),
            ),
        ],
      ),
      
    );
  }
}