import 'package:flutter/material.dart';

import 'login.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key, required String title}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final PageController controller = PageController();

  List<String> images = [
    "assets/images/ProfessionalServices.png", 
    "assets/images/FriendlyPrices.png",
    "assets/images/doorstep.png",

  ];

  List<String> imageTexts = [
    "Let's make awesome changes to your home",
    "Professional Services at friendly prices",
    "Affordable Services at your door step"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: PageView.builder(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index % images.length;
                });
              },
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.asset(
                          images[index % images.length],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        
                        padding: const EdgeInsets.all(30.0),
                        child: Text(
                          imageTexts[index % imageTexts.length],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 24,
                            fontWeight: FontWeight.bold
                            
                          ),
                        ),
                      ),
                    
                    ],
                  ),
                );
              },
              
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < images.length; i++)
                buildIndicator(currentIndex == i)
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(60.0),
            child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context,
                      // ignore: prefer_const_constructors
                      MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    // ignore: sort_child_properties_last
                    child: const Text("Get Started",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      ),
                      ),
                    style: ButtonStyle(   
                      backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 33, 150, 243)),                   
                      minimumSize: MaterialStateProperty.all(const Size(400, 40)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),
                      )
                    ),                    
                  ),
          )
          )
        ],
      ),
    );
  }

  Widget buildIndicator(bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Container(
        height: isSelected ? 120 : 10,
        width: isSelected ? 12 : 10,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? const Color.fromARGB(255, 5, 122, 195) : const Color.fromARGB(255, 126, 125, 125),
        ),
      ),
    );
  }
}

