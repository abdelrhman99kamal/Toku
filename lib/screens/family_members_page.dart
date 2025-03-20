import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import '../components/app_bar.dart';
import '../models/item_model.dart';

class FamilyMembersPage extends StatelessWidget {
  final List<ItemModel> family = const [
    //              father
    ItemModel(
      imageColor: Colors.white60,
      color: Color(0xFF2E7D32),
      sound: 'sounds/family_members/father.wav',
      image: 'assets/images/family_members/family_father.png',
      jpName: 'Chichioya',
      enName: 'Father',
    ),
    //              mother
    ItemModel(
      imageColor: Colors.white60,
      color: Color(0xFF2E7D32),
      sound: 'sounds/family_members/mother.wav',
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'Hahaoya',
      enName: 'Mother',
    ),
    //              son
    ItemModel(
      imageColor: Colors.white60,
      color: Color(0xFF2E7D32),
      sound: 'sounds/family_members/son.wav',
      image: 'assets/images/family_members/family_son.png',
      jpName: 'Musuko',
      enName: 'Son',
    ),
    //              daughter
    ItemModel(
      imageColor: Colors.white60,
      color: Color(0xFF2E7D32),
      sound: 'sounds/family_members/daughter.wav',
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'Musume',
      enName: 'Daughter',
    ),
    //              older_brother
    ItemModel(
      imageColor: Colors.white60,
      color: Color(0xFF2E7D32),
      sound: 'sounds/family_members/older bother.wav',
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'Nīsan',
      enName: 'Older Brother',
    ),
    //              Older Sister
    ItemModel(
      imageColor: Colors.white60,
      color: Color(0xFF2E7D32),
      sound: 'sounds/family_members/older sister.wav',
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'Ane',
      enName: 'Older Sister',
    ),
    //              Grandfather
    ItemModel(
      imageColor: Colors.white60,
      color: Color(0xFF2E7D32),
      sound: 'sounds/family_members/grand father.wav',
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'Ojīsan',
      enName: 'Grandfather',
    ),
    //              Grandmother
    ItemModel(
      imageColor: Colors.white60,
      color: Color(0xFF2E7D32),
      sound: 'sounds/family_members/grand mother.wav',
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'Sobo',
      enName: 'Grandmother',
    ),
    //              Younger Brother
    ItemModel(
      imageColor: Colors.white60,
      color: Color(0xFF2E7D32),
      sound: 'sounds/family_members/younger brohter.wav',
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'Otōto',
      enName: 'Younger Brother',
    ),
    //              Younger Sister
    ItemModel(
      imageColor: Colors.white60,
      color: Color(0xFF2E7D32),
      sound: 'sounds/family_members/younger sister.wav',
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'Imōto',
      enName: 'Younger Sister',
    ),
  ];

  const FamilyMembersPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2E7D32),
      appBar: const CustomAppBar(
        title: "Family Members",
      ),
      body: ListView.builder(
        itemCount: family.length,
        itemBuilder: (context, index) {
          return Item(items: family[index]);
        },
      ),
    );
  }
}
