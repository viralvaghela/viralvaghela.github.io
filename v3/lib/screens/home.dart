import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage("assets/images/profile_pic.png"),
              radius: 120,
              backgroundColor: Colors.transparent,
            ),
            const SizedBox(height: 20),
            const Text(
              'Viral Vaghela',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '| A passionate Ethical Hacker | Software Developer | Tech Geek from India |',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.email),
                  onPressed: () {
                    // add email functionality here
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.link),
                  onPressed: () {
                    // add link functionality here
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.phone),
                  onPressed: () {
                    // add phone functionality here
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
