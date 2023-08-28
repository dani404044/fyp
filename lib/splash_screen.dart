import 'package:flutter/material.dart';
import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashState createState() => _SplashState();
}

// ignore: non_constant_identifier_names
class _SplashState extends State<Splash> {
  get color => null;

  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 4000), () {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                const HomePage(title: 'One Click Service At Hand'
                )
                )
                );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset('assets/images/logo.png',
          height: 270,
          width: 270,
          ),
          const CircularProgressIndicator(color: Color.fromARGB(255, 33, 150, 243)),
          //const Text('Copyrights Reserved',style: TextStyle(fontSize: 8),
          //),
        ],
      ),
    ));
  }
}
