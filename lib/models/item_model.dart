import 'dart:ui';

class ItemModel {
  final String? image;
  final String jpName;
  final String enName;
  final String sound;
  final Color? color;
  final Color? imageColor;

  const ItemModel(
      {this.color,
      this.imageColor,
      required this.sound,
      this.image = '',
      required this.jpName,
      required this.enName});
}
