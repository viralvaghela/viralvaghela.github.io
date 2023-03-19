import 'package:flutter/material.dart';
import 'package:portfolio/screens/education.dart';
import 'package:portfolio/screens/home.dart';
import 'package:portfolio/screens/project.dart';
import 'package:portfolio/screens/work.dart';

import 'config.dart';

void main() => runApp(const Portfolio());

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const PortfolioScreen(),
    );
  }
}

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({super.key});

  @override
  _PortfolioScreenState createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  bool _isDarkMode = false;
  final List<Widget> _screens = [
    const HomeScreen(),
    const WorkExperienceScreen(),
    const EducationScreen(),
    const ProjectScreen(),
  ];
  void _toggleDarkMode() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(_isDarkMode ? Icons.light_mode : Icons.dark_mode),
              onPressed: _toggleDarkMode,
            ),
          ],
        ),
        body: IndexedStack(index: currentMenuIndex, children: _screens),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              currentMenuIndex = index;
            });
          },
          selectedItemColor: Colors.blue,
          unselectedItemColor:
              _isDarkMode ? Colors.grey[300] : Colors.grey[600],
          currentIndex: currentMenuIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.build),
              label: 'Projects',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.work),
              label: 'Work Experience',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Education',
            ),
          ],
        ),
      ),
    );
  }
}
