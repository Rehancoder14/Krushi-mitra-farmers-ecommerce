import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:krushimitra/fb1.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  // ignore: unused_element
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseapp = await Firebase.initializeApp();
    return firebaseapp;
  }

  Future signup(email, password) async {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const FireLogin())));
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    // ignore: no_leading_underscores_for_local_identifiers
    TextEditingController _emailcontroller = TextEditingController();
    // ignore: no_leading_underscores_for_local_identifiers
    TextEditingController _passwordcontroller = TextEditingController();
    // ignore: no_leading_underscores_for_local_identifiers
    TextEditingController _confirmpassword = TextEditingController();
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Image.asset("assets/logo2.jpeg"),
          const SizedBox(height: 20),
          const Text(
            "Create Account",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
            child: Column(
              children: [
                TextFormField(
                  controller: name,
                  decoration: const InputDecoration(
                      hintText: "Enter Name", labelText: "Name"),
                  enableSuggestions: true,
                ),
                TextFormField(
                  controller: _emailcontroller,
                  decoration: const InputDecoration(
                      hintText: "Enter email id ", labelText: "Username"),
                  enableSuggestions: true,
                ),
                TextFormField(
                  controller: _passwordcontroller,
                  decoration: const InputDecoration(
                      hintText: "Enter Password", labelText: "Password"),
                  enableSuggestions: false,
                  obscureText: true,
                ),
                TextFormField(
                  controller: _confirmpassword,
                  decoration: const InputDecoration(
                      hintText: "Confirm Password",
                      labelText: "Confirm Password"),
                  enableSuggestions: false,
                  obscureText: true,
                ),
                const SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {
                    signup(_emailcontroller.text, _passwordcontroller.text);
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.green),
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
