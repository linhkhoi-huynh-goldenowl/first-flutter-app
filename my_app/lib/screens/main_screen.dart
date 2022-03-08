import 'package:flutter/material.dart';

import '../widgets/info_item.dart';
import 'favorite_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  IconData heart = Icons.favorite_outline;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text(widget.title)),
          actions: [
            Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      FavoriteScreen.routeName,
                    );
                  },
                  child: const Icon(Icons.format_list_bulleted),
                )),
          ],
        ),
        body: ListView(
          children: const [
            InfoItem(name: "Alex"),
            InfoItem(name: "Boob"),
            InfoItem(name: "Binm"),
            InfoItem(name: "Resti"),
            InfoItem(name: "Godla"),
            InfoItem(name: "MyMax"),
            InfoItem(name: "Befa"),
            InfoItem(name: "OnLaf"),
            InfoItem(name: "Mess"),
            InfoItem(name: "Roof"),
            InfoItem(name: "Yuka"),
            InfoItem(name: "Minq"),
            InfoItem(name: "Fuve"),
          ],
        ));
  }
}
