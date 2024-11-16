import 'package:flutter/material.dart';
import 'package:medical/navigation.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: SizedBox(
                height: 300,
                child: Image.asset("assets/logo.png"),
              ),
            ),
            const Text(
              "Please Enter your Mobile Number \nto Login/Sign Up",
              style: TextStyle(color: Colors.grey),
            ),
            const Text(""),
            SizedBox(
              width: 300,
              child: TextField(
                controller: numberController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  labelText: 'Phone Number',
                ),
              ),
            ),
            const Text(""),
            SizedBox(
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NavigatorView()),
                    );
                  },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue),
                    child: const Text("CONTINUE",style: TextStyle(color: Colors.white),)))
          ],
        ),
      ),
    );
  }
}
