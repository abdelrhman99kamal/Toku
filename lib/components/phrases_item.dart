import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/item_model.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({
    super.key,
    this.item,
  });
  final ItemModel? item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (item!.jpName.length <= 25)
                  Text(
                    item!.jpName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                if (item!.jpName.length > 25 && item!.jpName.length <= 30)
                  Text(
                    item!.jpName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                if (item!.jpName.length > 30)
                  Text(
                    item!.jpName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                const SizedBox(
                  height: 13,
                ),
                Text(
                  item!.enName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            IconButton(
              alignment: Alignment.centerRight,
              icon: const Icon(
                Icons.volume_up_sharp,
                size: 32,
                color: Colors.black,
              ),
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(item!.sound));
              },
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        const Divider(
          color: Color(0xff3A2624),
          thickness: 1,
        ),
      ],
    );
  }
}
