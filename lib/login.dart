import 'package:flutter/material.dart';
import 'package:fnf/signup.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
            body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              
              Image.asset('assets/images/login.png'), 


              const Text("Let's you in",
              style: TextStyle(
                fontSize: 35, 
                fontWeight: FontWeight.bold, 
                ),
                ),



              const SizedBox(height: 60),
              ElevatedButton.icon(
                icon: Image.asset('assets/images/facebook3.png', 
                height: 24,
                ),
                label: const Text('Continue with Facebook',
                style: TextStyle(color: Colors.black,
                ),
                ),
                onPressed: () {
                  // Handle your Facebook login functionality here
                },
                style: ButtonStyle(   
                  backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 255, 255, 255)),                   
                  minimumSize: MaterialStateProperty.all(const Size(300, 50)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),
                    )
                    ),                    
                    ),
              ),





              const SizedBox(height: 20),
              ElevatedButton.icon(
                icon: Image.asset('assets/images/google.png', height: 24), // replace with your google icon
                label: const Text('Continue with Google',
                style: TextStyle(color: Colors.black,
                ),
                ),
                onPressed: () {
                  // Handle your Google login functionality here
                },
                style: ButtonStyle(   
                        backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 255, 255, 255)),                   
                        minimumSize: MaterialStateProperty.all(const Size(300, 50)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),
                        )
                      ),                    
                    ),
              ),
              const Text(""),
              const Text(""),
              const Text(""),
              const Text(""),
              const Text(""),
              const Text(""),
              const Text(""),
              const Text(""),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget> [
              const Text("Don't have an account? "),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUp()
                      ),
                );
                },
                child: const Text('Sign Up',
                style: TextStyle(color: Color.fromARGB(255, 33, 150, 243)),),
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
