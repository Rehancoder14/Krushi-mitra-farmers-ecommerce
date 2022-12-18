import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:krushimitra/homepage.dart';
import 'package:krushimitra/newuser.dart';
import 'package:firebase_core/firebase_core.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // ignore: unused_element
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseapp = await Firebase.initializeApp();
    return firebaseapp;
  }

  static Future<User?> loginUsingEmailPassword(
      {required String email,
      required password,
      required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        // ignore: avoid_print
        print("NO User Found With this Email");
      }
    }
    return user;
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/logo2.jpeg"),
            const SizedBox(
              height: 15.0,
            ),
            const Text(
              "Welcome",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: emailcontroller,
                    decoration: const InputDecoration(
                        hintText: "Enter email id ", labelText: "Username"),
                    enableSuggestions: true,
                  ),
                  TextFormField(
                    controller: passwordcontroller,
                    decoration: const InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                    enableSuggestions: false,
                    obscureText: true,
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () async {
                          // User? user = await loginUsingEmailPassword(
                          //     email: emailcontroller.text,
                          //     password: passwordcontroller.text,
                          //     context: context);
                          // // ignore: avoid_print
                          // print(user);
                          // if (user != null) {
                          //   // ignore: use_build_context_synchronously
                          //   Navigator.pushReplacement(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => const MyHomePage()));
                          // } else {
                          //   // ignore: avoid_print
                          //   print("User Not Found");
                          //   const SnackBar(
                          //     content: Text('User Not Found'),
                          //     backgroundColor: Colors.green,
                          //     elevation: 10,
                          //     behavior: SnackBarBehavior.floating,
                          //     margin: EdgeInsets.all(5),
                          //   );
                          //   Fluttertoast.showToast(msg: "User Not Found");
                          // }
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyHomePage()));
                        },
                        style:
                            TextButton.styleFrom(backgroundColor: Colors.green),
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CreateAccount()));
                        },
                        style:
                            TextButton.styleFrom(backgroundColor: Colors.green),
                        child: const Text(
                          "New User",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MyHomePage()));
        },
        label: const Text(
          "Skip login...",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
