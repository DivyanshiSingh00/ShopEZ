import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'SIGNUP !',
              style: TextStyle(color: Color(0xFFBD1F1F), fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Let's get started",
              style: TextStyle(color: Color(0xFFBD1F1F), fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            TextField(
              decoration: InputDecoration(
                labelText: 'Name',
                labelStyle: TextStyle(color: Colors.white),
                filled: true,
                fillColor: Color(0xFFBD1F1F),
                prefixIcon: Icon(Icons.person_outline, color: Colors.white),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(Icons.person, color: Colors.white),
                filled: true,
                fillColor: Color(0xFFBD1F1F),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email ID',
                labelStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(Icons.email_outlined, color: Colors.white),
                filled: true,
                fillColor: Color(0xFFBD1F1F),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(Icons.lock_outline, color: Colors.white),
                filled: true,
                fillColor: Color(0xFFBD1F1F),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text('SUBMIT', style: TextStyle(fontSize: 20)),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFBD1F1F),
                  onPrimary: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(color: Color(0xFFBD1F1F)),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to login page
                  },
                  child: Text(
                    ' Login here',
                    style: TextStyle(color: Color(0xFFBD1F1F), fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
