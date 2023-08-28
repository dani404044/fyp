import 'package:flutter/material.dart';


import 'home_menu_main/home_action.dart';

class AccountSetup extends StatelessWidget {
  const AccountSetup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back , color: Colors.black,),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('Fill Your Profile',
          style: TextStyle(color: Colors.black,
          ),
          ),
          backgroundColor: Colors.white
        ),
        body: const UserForm(),
        backgroundColor: Colors.white,
      ),
    );
  }
}

class UserForm extends StatefulWidget {
  const UserForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _UserFormState createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      
      key: _formKey,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              // Add image upload button here
              const SizedBox(height: 25.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'First Name',
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                  ),
                // validator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return 'Please enter your first name';
                //   }
                //   return null;
                // },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Last Name',
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),),
                // validator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return 'Please enter your last name';
                //   }
                //   return null;
                // },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Date of Birth',
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),),
                // validator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return 'Please enter your date of birth';
                //   }
                //   return null;
                // },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),),
                // validator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return 'Please enter your email';
                //   }
                //   return null;
                // },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                  ),
                // validator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return 'Please enter your phone number';
                //   }
                //   return null;
                // },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Address',
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),),
                // validator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return 'Please enter your address';
                //   }
                //   return null;
                // },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    // if (_formKey.currentState!.validate()) {
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //     const SnackBar(content: Text('Account setup is completed')),
                    //   );
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeAction()),
                      );                      
                    },
                 // },
                  child: const Text('Continue'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
