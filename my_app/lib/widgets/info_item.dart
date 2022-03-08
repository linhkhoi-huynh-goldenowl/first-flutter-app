import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:my_app/utils/favorites.dart';

class InfoItem extends StatefulWidget {
  final String name;
  final Favorite favorite;
  final bool asFavs;
  const InfoItem(
      {Key? key,
      required this.name,
      required this.asFavs,
      required this.favorite})
      : super(key: key);

  @override
  State<InfoItem> createState() => _InfoItemState();
}

class _InfoItemState extends State<InfoItem> {
  IconData heart = Icons.favorite_outline;
  bool isRed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          widget.name,
          style: const TextStyle(fontSize: 18),
        ),
        widget.asFavs
            ? Container()
            : GestureDetector(
                onTap: () {
                  setState(() {
                    isRed = !isRed;
                    widget.favorite.addFavorite(widget.name);
                  });
                },
                child: Icon(isRed ? Icons.favorite : Icons.favorite_outline,
                    color: isRed ? Colors.red : null),
              ),
      ]),
    );
  }
}
