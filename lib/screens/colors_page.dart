import 'package:flutter/material.dart';
import '../components/app_bar.dart';
import '../components/item.dart';
import '../models/item_model.dart';

class ColorsPage extends StatelessWidget {
  final List<ItemModel> colors = const [
    //              black
    ItemModel(
      imageColor: Colors.blue,
      color: Color(0xFFBA68C8),
      sound: 'sounds/colors/black.wav',
      image: 'assets/images/colors/color_black.png',
      jpName: 'Burakku',
      enName: 'black',
    ),
    //              white
    ItemModel(
      imageColor: Colors.blue,
      color: Color(0xFFBA68C8),
      sound: 'sounds/colors/white.wav',
      image: 'assets/images/colors/color_white.png',
      jpName: 'Shiroi',
      enName: 'white',
    ),
    //              red
    ItemModel(
      imageColor: Colors.blue,
      color: Color(0xFFBA68C8),
      sound: 'sounds/colors/red.wav',
      image: 'assets/images/colors/color_red.png',
      jpName: 'Aka',
      enName: 'Red',
    ),
    //              green
    ItemModel(
      imageColor: Colors.blue,
      color: Color(0xFFBA68C8),
      sound: 'sounds/colors/green.wav',
      image: 'assets/images/colors/color_green.png',
      jpName: 'Midori',
      enName: 'Green',
    ),
    //              gray
    ItemModel(
      imageColor: Colors.blue,
      color: Color(0xFFBA68C8),
      sound: 'sounds/colors/gray.wav',
      image: 'assets/images/colors/color_gray.png',
      jpName: 'Gurē',
      enName: 'Gray',
    ),
    //              brown
    ItemModel(
      imageColor: Colors.blue,
      color: Color(0xFFBA68C8),
      sound: 'sounds/colors/brown.wav',
      image: 'assets/images/colors/color_brown.png',
      jpName: 'Chairo',
      enName: 'Brown',
    ),
    //              yellow
    ItemModel(
      imageColor: Colors.blue,
      color: Color(0xFFBA68C8),
      sound: 'sounds/colors/yellow.wav',
      image: 'assets/images/colors/yellow.png',
      jpName: 'Kiiro',
      enName: 'Yellow',
    ),
    //              dusty_yellow
    ItemModel(
      imageColor: Colors.blue,
      color: Color(0xFFBA68C8),
      sound: 'sounds/colors/dusty yellow.wav',
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'Hokori ppoi kiiro',
      enName: 'Dusty Yellow',
    ),
  ];

  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFBA68C8),
      appBar: const CustomAppBar(
        title: 'Colors',
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Item(items: colors[index]);
        },
      ),
    );
  }
}
