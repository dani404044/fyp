import 'package:flutter/material.dart';
import 'package:fnf/login.dart';
import 'package:fnf/signin.dart';

class SignupServiceProvider extends StatefulWidget {
  const SignupServiceProvider({Key? key}) : super(key: key);

  @override
  _SignupServiceProviderState createState() => _SignupServiceProviderState();
}

class _SignupServiceProviderState extends State<SignupServiceProvider> {
  String? selectedValue;
  List<String> dropdownItems = ['Electrician', 'Mechanic', 'Plumber', 'Painter', 'Carpenter', 'Laundry', 'Cleaning', 'Event'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Create your Account",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
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
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 16.0),
              Container(
                width: double.infinity,
                child:DropdownButton<String>(
                  value: selectedValue,                  
                  isExpanded: true,
                  hint: const Text("Enter your Expertise",
                  style: TextStyle(color: Colors.black),),                  
                  icon: const Icon(Icons.arrow_downward,
                  color: Colors.blue,),
                  iconSize: 30,
                  padding: const EdgeInsets.all(5),
                  elevation: 16,
                  style: const TextStyle(
                    color: Colors.black
                  ),
                  underline: Container(
                    height: 3,
                    color: Colors.blue,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue!;
                    });
                  },
                  items: dropdownItems.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),


              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, 
                  MaterialPageRoute(
                    builder: (context) =>  SignIn(),
                    )
                    );
                  
                },
                style: ButtonStyle(   
                      backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 33, 150, 243)),                   
                      minimumSize: MaterialStateProperty.all(const Size(300, 40)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),
                      )
                    ),
                    
                    
                  ),
                child: const Text('Sign Up',
                style: TextStyle(color: Colors.white),
                ),
              ),
              const Text(""),
              const Text(""),
              const Text(""),
              const Text(""),

              const Text("or continue with",
              style: TextStyle(fontSize: 12,
              ),
              ),
              const Text(""),
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
              const SizedBox(height: 100),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget> [
              const Text("Already have an account? "),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  LoginPage()
                      ),
                );
                },
                child: const Text('Sign in',
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
