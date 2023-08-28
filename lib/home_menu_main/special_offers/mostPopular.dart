import 'package:flutter/material.dart';

import '../home_action.dart';

class MostPopular extends StatelessWidget {
  const MostPopular({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Most Popular Services",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeAction()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 33, 150, 243),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    "All",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 33, 150, 243),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeAction()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 33, 150, 243),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    "Cleaning",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 33, 150, 243),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeAction()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 33, 150, 243),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    "Electrician",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 33, 150, 243),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeAction()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 33, 150, 243),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    "Plumber",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 33, 150, 243),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeAction()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 33, 150, 243),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    "Plumber",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 33, 150, 243),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}