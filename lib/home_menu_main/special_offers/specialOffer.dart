import 'package:flutter/material.dart';

class SpecialOffer extends StatelessWidget {
  const SpecialOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Special Offers",
        style: TextStyle(color: Colors.black),),
        elevation: 1,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back , color: Colors.black,),
            onPressed: () => Navigator.of(context).pop(),
          ),
        
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Image.asset("assets/images/ad001.png"),
            const SizedBox(height: 10),
            Image.asset("assets/images/ad002.png"),
            const SizedBox(height: 10),
            Image.asset("assets/images/ad003.png"),
            const SizedBox(height: 10),
            Image.asset("assets/images/ad001.png"),
            const SizedBox(height: 10),
            Image.asset("assets/images/ad002.png"),
            const SizedBox(height: 10),
            Image.asset("assets/images/ad003.png"),
          ],          
        ),        
      ),
      backgroundColor: Colors.white,
    );
        
  }
}