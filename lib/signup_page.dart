import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final emailController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void handleSignUp() {
    String email = emailController.text.trim();
    String username = usernameController.text.trim();
    String password = passwordController.text;

    if (email.isEmpty || username.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Tanpri ranpli tout chan yo.')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Enskripsyon reyisi ✅')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Enskripsyon')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Imel'),
            ),
            TextField(
              controller: usernameController,
              decoration: InputDecoration(labelText: 'Non Itilizatè'),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Modpas'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: handleSignUp,
              child: Text('Enskri'),
            ),
          ],
        ),
      ),
    );
  }
}
