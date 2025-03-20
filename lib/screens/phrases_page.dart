import 'package:flutter/material.dart';
import 'package:toku/models/item_model.dart';
import '../components/app_bar.dart';
import '../components/phrases_item.dart';

// ignore: must_be_immutable
class PhrasesPage extends StatelessWidget {
  PhrasesPage({super.key});
  List<ItemModel> phrases = [
    const ItemModel(
      color: Colors.blue,
      sound: 'sounds/phrases/are_you_coming.wav',
      jpName: 'Kimasu ka',
      enName: 'Are you coming?',
    ),
    const ItemModel(
      color: Colors.blue,
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
      jpName: 'Kōdoku suru koto o wasurenaide kudasai',
      enName: 'Don\'t forget to subscribe',
    ),
    const ItemModel(
      color: Colors.blue,
      sound: 'sounds/phrases/how_are_you_feeling.wav',
      jpName: 'Go kibun wa ikimasu',
      enName: 'How are you feeling?',
    ),
    const ItemModel(
      color: Colors.blue,
      sound: 'sounds/phrases/i_love_anime.wav',
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'I love anime',
    ),
    const ItemModel(
      color: Colors.blue,
      sound: 'sounds/phrases/i_love_programming.wav',
      jpName: 'Watashi wa puroguramingu desu',
      enName: 'I love programming',
    ),
    const ItemModel(
      color: Colors.blue,
      sound: 'sounds/phrases/programming_is_easy.wav',
      jpName: 'Puroguramingu wa kantandesu',
      enName: 'Programming is easy',
    ),
    const ItemModel(
      color: Colors.blue,
      sound: 'sounds/phrases/what_is_your_name.wav',
      jpName: 'Namae wa nandesu ka',
      enName: 'What is your name?',
    ),
    const ItemModel(
      color: Colors.blue,
      sound: 'sounds/phrases/where_are_you_going.wav',
      jpName: 'Doko ni iku no',
      enName: 'Where are you going?',
    ),
    const ItemModel(
      color: Colors.blue,
      sound: 'sounds/phrases/yes_im_coming.wav',
      jpName: 'Hai watashi wa ikimasu',
      enName: 'Yes, I\'m coming',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: const CustomAppBar(
        title: 'Phrases',
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return PhrasesItem(item: phrases[index]);
        },
      ),
    );
  }
}
