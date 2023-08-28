import 'package:flutter/material.dart';

import '../special_offers/mostPopular.dart';

class ServicesDetail extends StatelessWidget {
  const ServicesDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "All Services",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          GridView.count(              
              padding: EdgeInsets.all(10),
              shrinkWrap: true,
              crossAxisCount: 4,              
              children: [
                
                                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MostPopular()),
                    );
                  },
                  child: Column(
                  children: [
                    Image.asset(
                      'assets/images/electrician.png',
                      width: 60,
                      height: 60,
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "Electrician",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MostPopular()),
                    );
                  },
                  child: Column(
                  children: [
                    Image.asset(
                      'assets/images/mechanic.png',
                      width: 60,
                      height: 60,
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "Mechanic",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MostPopular()),
                    );
                  },
                  child: Column(
                  children: [
                    Image.asset(
                      'assets/images/plumber.png',
                      width: 60,
                      height: 60,
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "Plumber",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                ),


                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MostPopular()),
                    );
                  },
                  child: Column(
                  children: [
                    Image.asset(
                      'assets/images/painter.png',
                      width: 60,
                      height: 60,
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "Painter",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                ),


                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MostPopular()),
                    );
                  },
                  child: Column(
                  children: [
                    Image.asset(
                      'assets/images/carpenter.png',
                      width: 60,
                      height: 60,
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "Carpenter",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                ),


                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MostPopular()),
                    );
                  },
                  child: Column(
                  children: [
                    Image.asset(
                      'assets/images/laundry.png',
                      width: 60,
                      height: 60,
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "Laundry",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                ),


                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MostPopular()),
                    );
                  },
                  child: Column(
                  children: [
                    Image.asset(
                      'assets/images/servicesS.png',
                      width: 60,
                      height: 60,
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "Cleaning",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                ),


                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MostPopular()),
                    );
                  },
                  child: Column(
                  children: [
                    Image.asset(
                      'assets/images/event.png',
                      width: 60,
                      height: 60,
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "Event",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                ),



                GestureDetector(
                  onTap: (){
                    showDialog(
                      context: context, 
                      builder: (BuildContext context){
                      return AlertDialog(
                        title: const Text("Alert"),
                        content: const Row(
                          children: [
                            Icon(Icons.info, color: Colors.blue),
                            SizedBox(width: 8),
                            Text("No more Services are available"),
                          ],
                        ),
                        
                        actions: [
                          TextButton(onPressed: (){
                            Navigator.of(context).pop();
                          }, 
                          child: const Text("OK",
                          ),
                          )
                        ],
                      );
                    },
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset('assets/images/more.png',
                      width: 60,
                      height: 60,
                      ),
                      const SizedBox(height: 4),
                      const Text("More",
                      style: TextStyle(fontSize: 12),)
                    ],
                  ),
                )

              ],
            ),
        ],
      ),
    );
  }
}