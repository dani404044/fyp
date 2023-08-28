import 'package:flutter/material.dart';
import 'package:fnf/home_menu_main/special_offers/mostPopular.dart';
import 'package:fnf/home_menu_main/all_services/services_detail.dart';
import 'package:fnf/home_menu_main/special_offers/specialOffer.dart';

class HomeAction extends StatefulWidget {
  const HomeAction({super.key});

  @override
  State<HomeAction> createState() => _HomeActionState();
}

class _HomeActionState extends State<HomeAction> {
   final String userName = "Danish Riaz";
  final String userPic = "assets/images/profile.png";
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int currentIndex = 0;
  int currentIndex2 = 0;
  final PageController controller = PageController();

  List<String> images = [
    "assets/images/ad001.png",
    "assets/images/ad002.png",
    "assets/images/ad003.png",
    
  ];
    List<BottomNavigationBarItem> bottomNavBarItems = [
      
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.calendar_today),
      label: 'Calender',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
    ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          
          leading: InkWell(
            onTap: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            child: CircleAvatar(
              backgroundImage: AssetImage(userPic),
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hello",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                userName,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.notifications,
                color: Colors.grey,
              ),
              onPressed: () {
                // Handle notification icon press
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.bookmark,
                color: Colors.grey,
              ),
              onPressed: () {
                // Handle bookmark icon press
              },
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  userName,
                  style: const TextStyle(color: Colors.black),
                ),
                accountEmail: const Text(
                  "example@example.com",
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(userPic),
                ),
              ),
              ListTile(
                title: const Text('Profile'),
                onTap: () {
                  // Handle profile action
                },
              ),
              ListTile(
                title: const Text('Settings'),
                onTap: () {
                  // Handle settings action
                },
              ),
              ListTile(
                title: const Text('Logout'),
                onTap: () {
                  // Handle logout action
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,   
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(                    
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: const BorderSide(width: 0.8),
                    ),
                    hintText: 'Search',
                    prefixIcon: const Icon(Icons.search_rounded),
                    suffixIcon: IconButton(icon: const Icon(Icons.search),
                    onPressed: (){

                    },
                    ),
                  ),
                 
                ),
              ),
            
            const SizedBox(height: 10),
              Padding(padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    "Special Offers",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SpecialOffer(),
                        ),
                      );
                    },
                    child: const Text(
                      'See All',
                      style: TextStyle(
                        color: Color.fromARGB(255, 33, 150, 243),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
              const SizedBox(height: 10),
              Container(
                //margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                height: 230,
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
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SpecialOffer()),
                          );
                        },
                      child: Column(
                        children: [
                          Image.asset(
                            images[index % images.length],
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    )
                    );
                  },
                ),
              ),
              
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(images.length, (index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 2.0),
                    height: currentIndex == index ? 12.0 : 8.0,
                    width: currentIndex == index ? 12.0 : 8.0,
                    decoration: BoxDecoration(
                      color: currentIndex == index ? Colors.blue : Colors.grey,
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  );
                }),
              ),
              Padding(padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    "Services",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ServicesDetail(),
                        ),
                      );
                    },
                    child: const Text(
                      'See All',
                      style: TextStyle(
                        color: Color.fromARGB(255, 33, 150, 243),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
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

              ],
            ),
            
            const Divider(
              color: Colors.blueGrey,
              height: 1,
              thickness: 1,
              indent: 5,
              endIndent: 5,
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                   const Text("Most Popular Services",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,

                  ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> MostPopular(),
                      )
                      );
                    },
                    child: const  Text("See All",
                    style: TextStyle(color: Color.fromARGB(255, 33, 150, 243),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    ),
                    ),
                  ),

                ],
              ),
              ),
               Padding(
                
                padding: const EdgeInsets.all(12.0),
                
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  
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

                          borderRadius:  BorderRadius.circular(20)),
                        child: const Text("All",
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

                          borderRadius:  BorderRadius.circular(20)),
                        child: const Text("Cleaning",
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

                          borderRadius:  BorderRadius.circular(20)),
                        child: const Text("Electrician",
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

                          borderRadius:  BorderRadius.circular(20)),
                        child: const Text("Plumber",
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

                          borderRadius:  BorderRadius.circular(20)),
                        child: const Text("Painter",
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

                          borderRadius:  BorderRadius.circular(20)),
                        child: const Text("Mechanic",
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

              
            ],
            
          ),
          
          
        ),

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex2,
          onTap: (index) {
            setState(() {
              currentIndex2 = index;
            });
          },
          items: bottomNavBarItems,
        ),
        
        backgroundColor: Colors.white,
      ),
      
      
    );
    
  }
}
