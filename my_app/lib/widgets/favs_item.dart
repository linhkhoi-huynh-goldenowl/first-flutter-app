import 'package:flutter/material.dart';
import 'package:my_app/models/info_person.dart';
import 'package:provider/provider.dart';

class FavsItem extends StatefulWidget {
  const FavsItem({Key? key}) : super(key: key);

  @override
  State<FavsItem> createState() => _FavsItemState();
}

class _FavsItemState extends State<FavsItem> {
  IconData heart = Icons.favorite_outline;
  bool isRed = false;

  @override
  Widget build(BuildContext context) {
    final infoPerson = Provider.of<InfoPerson>(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Text(
          infoPerson.name,
          style: const TextStyle(fontSize: 18),
        ),
      ]),
    );
  }
}
