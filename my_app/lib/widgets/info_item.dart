import 'package:flutter/material.dart';
import 'package:my_app/models/info_person.dart';
import 'package:my_app/provider/favs_provider.dart';
import 'package:provider/provider.dart';

class InfoItem extends StatefulWidget {
  final String name;
  const InfoItem({Key? key, required this.name}) : super(key: key);

  @override
  State<InfoItem> createState() => _InfoItemState();
}

class _InfoItemState extends State<InfoItem> {
  IconData heart = Icons.favorite_outline;
  bool isRed = false;

  @override
  Widget build(BuildContext context) {
    final favsProvider = Provider.of<FavsProvider>(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          widget.name,
          style: const TextStyle(fontSize: 18),
        ),
        Consumer<FavsProvider>(
          builder: (context, favs, child) {
            return GestureDetector(
              onTap: () {
                isRed = !isRed;
                favsProvider.addFavorite(InfoPerson(name: widget.name));
              },
              child: Icon(
                  favsProvider.checkName(widget.name)
                      ? Icons.favorite
                      : Icons.favorite_outline,
                  color:
                      favsProvider.checkName(widget.name) ? Colors.red : null),
            );
          },
        ),
      ]),
    );
  }
}
