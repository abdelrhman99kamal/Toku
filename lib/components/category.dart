import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({
    super.key,
    required this.title,
    required this.color,
    required this.onPress, required this.icon,
  });

  final String title;
  final Color color;
  final Function() onPress;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: SizedBox(
        height: 100.0,
        child: Card(
          elevation: 15.0,
          color: color,
          margin: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: icon,
            title: Text(
              title,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
