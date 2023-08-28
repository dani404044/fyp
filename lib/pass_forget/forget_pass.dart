import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('assets/images/PasswordForget.png'),
              const SizedBox(height: 16),
              const Text(
                'Please enter your email address to reset your password:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                ),
              ),
              const SizedBox(height: 250),
              ElevatedButton(
                style: ButtonStyle(   
                      backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 33, 150, 243)),                   
                      minimumSize: MaterialStateProperty.all(const Size(400, 40)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),
                      )
                    ),
                    
                    
                  ),
                onPressed: () {
                  // Implement logic to send password reset email
                },
                child: const Text('Reset Password',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
