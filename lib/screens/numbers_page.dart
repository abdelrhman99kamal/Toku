import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import '../components/app_bar.dart';
import '../models/item_model.dart';

class NumbersPage extends StatelessWidget {
  final List<ItemModel> numbers = const [
    //              1
    ItemModel(
      imageColor: Colors.white60,
      color: Color(0xFFFB8C00),
      sound: 'sounds/numbers/number_one_sound.mp3',
      image: 'assets/images/numbers/number_one.png',
      jpName: 'Ichi',
      enName: 'One',
    ),
    //              2
    ItemModel(
      imageColor: Colors.white60,
      color: Color(0xFFFB8C00),
      sound: 'sounds/numbers/number_two_sound.mp3',
      image: 'assets/images/numbers/number_two.png',
      enName: "Two",
      jpName: "Ni",
    ),
    //              3
    ItemModel(
      imageColor: Colors.white60,
      color: Color(0xFFFB8C00),
      sound: 'sounds/numbers/number_three_sound.mp3',
      image: 'assets/images/numbers/number_three.png',
      enName: "Three",
      jpName: "San",
    ),
    //              4
    ItemModel(
      imageColor: Colors.white60,
      color: Color(0xFFFB8C00),
      sound: 'sounds/numbers/number_four_sound.mp3',
      image: 'assets/images/numbers/number_four.png',
      enName: "Four",
      jpName: "Shi",
    ),
    //              5
    ItemModel(
      imageColor: Colors.white60,
      color: Color(0xFFFB8C00),
      sound: 'sounds/numbers/number_five_sound.mp3',
      image: 'assets/images/numbers/number_five.png',
      enName: "Five",
      jpName: "Go",
    ),
    //              6
    ItemModel(
      imageColor: Colors.white60,
      color: Color(0xFFFB8C00),
      sound: 'sounds/numbers/number_six_sound.mp3',
      image: 'assets/images/numbers/number_six.png',
      enName: "Six",
      jpName: "Roku",
    ),
    //              7
    ItemModel(
      imageColor: Colors.white60,
      color: Color(0xFFFB8C00),
      sound: 'sounds/numbers/number_seven_sound.mp3',
      image: 'assets/images/numbers/number_seven.png',
      enName: "Seven",
      jpName: "Sebun",
    ),
    //              8
    ItemModel(
      imageColor: Colors.white60,
      color: Color(0xFFFB8C00),
      sound: 'sounds/numbers/number_eight_sound.mp3',
      image: 'assets/images/numbers/number_eight.png',
      enName: "Eight",
      jpName: "Hachi",
    ),
    //              9
    ItemModel(
      imageColor: Colors.white60,
      color: Color(0xFFFB8C00),
      sound: 'sounds/numbers/number_nine_sound.mp3',
      image: 'assets/images/numbers/number_nine.png',
      enName: "Nine",
      jpName: "Kyū",
    ),
    //              10
    ItemModel(
      imageColor: Colors.white60,
      color: Color(0xFFFB8C00),
      sound: 'sounds/numbers/number_ten_sound.mp3',
      image: 'assets/images/numbers/number_ten.png',
      enName: "Ten",
      jpName: "Jū",
    ),
  ];

  const NumbersPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFB8C00),
      appBar: const CustomAppBar(
        title: "Numbers",
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(items: numbers[index]);
        },
      ),
    );
  }
}

// List<Item> getList(List<Items> numbers) {
//   List<Item> items = [];
//   for (Items i in numbers) {
//     items.add(Item(items: i));
//   }

//   return items;
// }
