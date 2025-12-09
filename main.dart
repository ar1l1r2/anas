import 'package:flutter/material.dart';

void main() {
  runApp(const ResumeApp());
}

class ResumeApp extends StatelessWidget {
  const ResumeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Resume',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const ResumePage(),
    );
  }
}

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50], // Light background
      appBar: AppBar(
        title: const Text(
          'My Resume',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            // Profile Photo
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/anas.jpeg'),
              backgroundColor: Colors.grey, // Fallback
            ),
            const SizedBox(height: 24),

            // Name
            const Text(
              'User Name', // Placeholder Name
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            const SizedBox(height: 12),

            // Brief Description
            Text(
              'A passionate developer with experience in building mobile applications using Flutter. Dedicated to creating clean, efficient, and user-friendly solutions.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
                height: 1.5,
              ),
            ),
            const SizedBox(height: 32),

            // Contact Info Section
            const Divider(),
            const SizedBox(height: 16),

            // Mobile Number
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: const ListTile(
                leading: Icon(Icons.phone, color: Colors.teal, size: 28),
                title: Text(
                  'Mobile Number',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                subtitle: Text(
                  '+967 77x xxx xxx', // Yemeni Country Code
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Email Address
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: const ListTile(
                leading: Icon(Icons.email, color: Colors.teal, size: 28),
                title: Text(
                  'Email Address',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                subtitle: Text(
                  'example@email.com',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
