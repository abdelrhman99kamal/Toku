import 'package:flutter/material.dart';
import 'package:toku/components/category.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/family_members_page.dart';
import 'package:toku/screens/phrases_page.dart';

import '../components/app_bar.dart';
import 'numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent[100],
      appBar: const CustomAppBar(
        title: 'TOKU',
      ),
      body: Column(
        children: [
          Category(
            icon: const Icon(
              size: 35.0,
              Icons.numbers,
              color: Color.fromARGB(255, 10, 33, 207),
            ),
            title: "Numbers",
            color:Colors.orange.shade700,
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const NumbersPage();
                  },
                ),
              );
            },
          ),
          Category(
            icon: const Icon(
              size: 35.0,
              Icons.family_restroom,
              color: Colors.amber,
            ),
            title: "Family Members",
            color:Colors.green.shade800,
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const FamilyMembersPage();
                }),
              );
            },
          ),
          Category(
            icon: const Icon(
              size: 35.0,
              Icons.palette,
              color: Colors.blue,
            ),
            title: "Colors",
            color: Colors.purple,
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const ColorsPage();
                }),
              );
            },
          ),
          Category(
            icon: const Icon(
              size: 35.0,
              Icons.book,
              color: Colors.white,
            ),
            title: "Phrases",
            color:Colors.blue.shade700,
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return PhrasesPage();
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}
