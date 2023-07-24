import 'package:age_sync/pages/tasks.dart';
import 'package:flutter/material.dart';

import '../widgets/home_page_buttons.dart';
import 'login_page.dart';

class HomePage extends StatefulWidget {
  static const routeName = "/home-page";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home Page"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey[900],
      ),
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.black),
                child: ListTile(
                  title: Text(
                    "Extra Options",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              ListTile(
                onTap: () {},
                title: const Text("Settings"),
                leading: const Icon(Icons.settings),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const LoginPage();
                      },
                    ),
                  );
                },
                title: const Text("Logout"),
                leading: const Icon(Icons.logout),
              ),
            ],
          ),
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Pathway(
                  title: "Interests",
                  imagePath:
                      "https://img.icons8.com/?size=512&id=C584nZjnS8uU&format=png",
                  screen: LoginPage(),
                ),
                SizedBox(width: 40),
                Pathway(
                  title: "Chat",
                  imagePath:
                      "https://img.icons8.com/?size=512&id=D67ILaoWa5Dz&format=png",
                  screen: LoginPage(),
                ),
              ],
            ),
            SizedBox(height: 50), // Add spacing between the rows
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Pathway(
                  title: "Task list",
                  imagePath:
                      "https://img.icons8.com/?size=512&id=114426&format=png",
                  screen: Tasks(),
                ),
                SizedBox(width: 40),
                Pathway(
                  title: "Other",
                  imagePath:
                      "https://img.icons8.com/?size=512&id=D67ILaoWa5Dz&format=png",
                  screen: LoginPage(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
