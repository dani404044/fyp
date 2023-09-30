import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:fnf/login.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({Key? key}) : super(key: key);

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create New Password"),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/verify.png'),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Align( 
                alignment: Alignment.centerLeft,
              child: Text(
                'Create your new password',                
                style: TextStyle(fontSize: 16),
              ),
              ),
            ),
            const SizedBox(height: 20), // Add some space
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'New Password',
                  labelStyle: TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                ),
              ),
            ),
            const SizedBox(height: 20), // Add some space
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: _confirmPasswordController,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm New Password',
                  labelStyle: TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                ),
              ),
            ),
              const SizedBox(height: 40),
              ElevatedButton(
              onPressed: () {
showDialog(
  context: context,
  barrierDismissible: false, // Set to false to prevent the dialog from closing when the screen is tapped
  builder: (BuildContext context) {
    return Stack(
      children: [
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5), // Apply a blur effect to the screen
          child: Container(
            color: Colors.black.withOpacity(0.1), // Set the color of the screen
          ),
        ),
        AlertDialog(
          title: Image.asset('assets/images/congratulation2.png'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Congratulations!',
                style: TextStyle(
                  color: Color.fromARGB(255, 33, 150, 243),
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 10),
              Text("Your account is ready to use",
                style: TextStyle(fontSize: 16),),
            ],
          ),
          backgroundColor: Colors.white,
          actions: <Widget>[
            TextButton(
              child: const Text('OK',
                style: TextStyle(color: Colors.black),),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ],
    );
  },
);

              },
              child: Text(
                'Continue',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 33, 150, 243)),
                minimumSize: MaterialStateProperty.all(const Size(300, 40)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}



