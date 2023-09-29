import 'package:flutter/material.dart';
import 'package:fnf/pass_forget/forget_pass.dart';
import 'package:fnf/signup_select.dart';
import 'account_setup.dart';


class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
            body: SingleChildScrollView(
        
      
        padding: const EdgeInsets.all(30.0),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[              
              const Text("Login to your Account",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35,
              ),
              ),           
              const Text(""),     
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),

                  )
                  

                ),
              ),
              const SizedBox(height: 16.0),
                     
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.black),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                    
                  ),

                ),
                obscureText: true,
              ),
              const SizedBox(height: 30.0),       
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) =>  AccountSetup(),));
                  
                },
                style: ButtonStyle(   
                      backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 33, 150, 243)),                   
                      minimumSize: MaterialStateProperty.all(const Size(300, 40)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),
                      )
                    ),
                    
                    
                  ),
                child: const Text('Sign In',
                style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 16.0),
              
                            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  ForgotPasswordPage()
                      ),
                );
                },
                child: const Text('Forget the password?',
                style: TextStyle(color: Color.fromARGB(255, 33, 150, 243),
                ),
                ),
                ),
              
              


              
              const SizedBox(height: 16.0),
              const Text("or continue with",
              style: TextStyle(fontSize: 12,
              ),
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Image.asset('assets/images/facebook.png'),
                    onPressed: () {
                      // Handle Facebook sign up
                    },
                  ),
                  IconButton(
                    icon: Image.asset('assets/images/google.png'), 
                    onPressed: () {
                      // Handle Google sign up
                    },
                  ),
                ],
              ),
              const SizedBox(height: 180.0),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget> [
              const Text("Already have an account? "),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  ScreenSelection()
                      ),
                );
                },
                child: const Text('Sign Up',
                style: TextStyle(color: Color.fromARGB(255, 33, 150, 243),
                ),
                ),
              )
              ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}