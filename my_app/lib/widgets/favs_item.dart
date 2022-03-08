import 'package:flutter/material.dart';
import 'package:my_app/models/info_person.dart';
import 'package:provider/provider.dart';

import '../provider/favs_provider.dart';

class FavsItem extends StatefulWidget {
  const FavsItem({Key? key}) : super(key: key);

  @override
  State<FavsItem> createState() => _FavsItemState();
}

class _FavsItemState extends State<FavsItem> {
  @override
  Widget build(BuildContext context) {
    final infoPerson = Provider.of<InfoPerson>(context);
    final favsProvider = Provider.of<FavsProvider>(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          infoPerson.name,
          style: const TextStyle(fontSize: 18),
        ),
        Consumer<FavsProvider>(
          builder: (context, favs, child) {
            return GestureDetector(
              onTap: () {
                favsProvider.addFavorite(InfoPerson(name: infoPerson.name));
              },
              child: const Icon(Icons.remove),
            );
          },
        ),
      ]),
    );
  }
}
