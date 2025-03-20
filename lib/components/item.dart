import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../models/item_model.dart';

class Item extends StatelessWidget {
  const Item({
    super.key,
    this.items,
  });
  final ItemModel? items;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: items!.color,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: items!.imageColor,
                child: Image(
                  image: AssetImage(items!.image!),
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Column(
                children: [
                  if (items!.jpName.length <= 20)
                    Text(
                      items!.jpName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  if (items!.jpName.length > 20)
                    Text(
                      items!.jpName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  const SizedBox(
                    height: 13,
                  ),
                  Text(
                    items!.enName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              if (items!.image == '') const Spacer(flex: 1),
              const Spacer(
                flex: 4,
              ),
              IconButton(
                icon: const Icon(
                  Icons.volume_up_sharp,
                  size: 32,
                  color: Colors.black,
                ),
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(items!.sound));
                },
              ),
              if (items!.image == '') const Spacer(flex: 2),
              const Spacer(
                flex: 1,
              ),
            ],
          ),
          const Divider(
            color: Color(0xff3A2624),
            thickness: 1,
          ),
        ],
      ),
    );
  }
}

