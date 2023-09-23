import 'package:flutter/material.dart';
import 'package:fnf/signup.dart';


class ScreenSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Please Select",
        style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                      // ignore: prefer_const_constructors
                      MaterialPageRoute(builder: (context) => SignUp()));
              },
              child:  Text('Registered as Customer',
              style:  TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      ),
                      ),
                    style: ButtonStyle(   
                      backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 33, 150, 243)),                   
                      minimumSize: MaterialStateProperty.all(const Size(370, 70)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),
                      )
                    ),                    
                  ),
            ),
            const SizedBox(height: 30),


            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                      // ignore: prefer_const_constructors
                      MaterialPageRoute(builder: (context) => SignUp()));
              },
              child: Text('Registered as Service Provider',
              style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      ),
                      ),
                    style: ButtonStyle(   
                      backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 33, 150, 243)),                   
                      minimumSize: MaterialStateProperty.all(const Size(370, 70)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),
                      )
                    ),                    
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
