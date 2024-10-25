import 'package:flutter/material.dart';
import 'login_screen.dart';

class ProfileScreen extends StatelessWidget {
  final String username;

  ProfileScreen({required this.username});

  final TextEditingController emailController = TextEditingController(text: "contohemail@gmail.com");
  final TextEditingController phoneController = TextEditingController(text: "+62 123 123 123");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: const AssetImage('assets/profile.jpg'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: TextEditingController(text: username),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person, color: Theme.of(context).primaryColor),
                labelText: 'Username',
                filled: true,
                fillColor: Colors.white,
              ),
              readOnly: true,  
            ),
            SizedBox(height: 8),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email, color: Theme.of(context).primaryColor),
                labelText: 'E-Mail',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone, color: Theme.of(context).primaryColor),
                labelText: 'Phone Number',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Profile updated successfully'),
                ));
              },
              child: Text('Edit Profile'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Theme.of(context).primaryColor,
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
              child: Text('Exit'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Theme.of(context).primaryColor, 
              ),
            ),
          ],
        ),
      ),
    );
  }
}
