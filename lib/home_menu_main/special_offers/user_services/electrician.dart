import 'package:flutter/material.dart';

class ElectricianServices extends StatelessWidget {
  const ElectricianServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Electrician",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  
                ),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
        
                  child: const ListTile(                
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/01.png'),
                    ),
                    title: Text("dani"),
                    subtitle: Text("this is dani"),
                ),
                ),         
                ),

                Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  
                ),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
        
                  child: const ListTile(                
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/01.png'),
                    ),
                    title: Text("dani"),
                    subtitle: Text("this is dani"),
                ),
                ),         
                ),

                Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  
                ),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
        
                  child: const ListTile(                
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/01.png'),
                    ),
                    title: Text("dani"),
                    subtitle: Text("this is dani"),
                ),
                ),         
                ),

                Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  
                ),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
        
                  child: const ListTile(                
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/01.png'),
                    ),
                    title: Text("dani"),
                    subtitle: Text("this is dani"),
                ),
                ),         
                ),
                              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  
                ),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
        
                  child: const ListTile(                
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/01.png'),
                    ),
                    title: Text("dani"),
                    subtitle: Text("this is dani"),
                ),
                ),         
                ),

                Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  
                ),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
        
                  child: const ListTile(                
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/01.png'),
                    ),
                    title: Text("dani"),
                    subtitle: Text("this is dani"),
                ),
                ),         
                ),

                Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  
                ),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
        
                  child: const ListTile(                
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/01.png'),
                    ),
                    title: Text("dani"),
                    subtitle: Text("this is dani"),
                ),
                ),         
                ),


                Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  
                ),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
        
                  child: const ListTile(                
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/01.png'),
                    ),
                    title: Text("dani"),
                    subtitle: Text("this is dani"),
                ),
                ),         
                ),

                Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  
                ),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
        
                  child: const ListTile(                
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/01.png'),
                    ),
                    title: Text("dani"),
                    subtitle: Text("this is dani"),
                ),
                ),         
                ),


                Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  
                ),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
        
                  child: const ListTile(                
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/01.png'),
                    ),
                    title: Text("dani"),
                    subtitle: Text("this is dani"),
                ),
                ),         
                ),


                Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  
                ),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
        
                  child: const ListTile(                
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/01.png'),
                    ),
                    title: Text("dani"),
                    subtitle: Text("this is dani"),
                ),
                ),         
                ),

                
        
            ],
          ),
        ),
      ),
    );
  }
}