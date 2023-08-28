import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String userName = "Danish Riaz";
  final String userPic = "assets/images/profile.png";
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int currentIndex = 0;
  final PageController controller = PageController();

  List<String> images = [
    "assets/images/ProfessionalServices.png",
    "assets/images/FriendlyPrices.png",
    "assets/images/UserFriendly.png",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 2,
          
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
                "Good Morning",
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Special Offers",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
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
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 1,
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
            
            // image slider ends here

            // services and see all starting here
            Padding(
              padding: const EdgeInsets.all(2.0),
              
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
                          builder: (context) => Home(),
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
                
                Column(
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
                Column(
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
                Column(
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
                Column(
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
                Column(
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
                Column(
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
                Column(
                  children: [
                    Image.asset(
                      'assets/images/servicesS.png',
                      width: 60,
                      height: 60,
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "Service",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/images/more.png',
                      width: 60,
                      height: 60,
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "More",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),

              ],
            ),
            
            const Divider(
              color: Colors.blueGrey,
              height: 2,
              thickness: 2,
              indent: 5,
              endIndent: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Home(),
                      )
                      );
                    },
                    child: const  Text("See All",
                    style: TextStyle(color: Color.fromARGB(255, 33, 150, 243),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    ),
                    ),
                  )
                ],
              ),
              ), 


                 
          ],
          
        ),
           
        
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
          ),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today),
                label: 'Calendar',
              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            onTap: _onItemTapped,
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
