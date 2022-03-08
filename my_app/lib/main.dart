import 'package:flutter/material.dart';
import 'package:my_app/screens/favorite_screen.dart';
import 'package:my_app/widgets/info_item.dart';

import 'utils/favorites.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Startup Name Generator'),
      routes: {FavoriteScreen.routeName: (context) => FavoriteScreen()},
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  IconData heart = Icons.favorite_outline;
  Favorite favs = Favorite();

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
                    Navigator.pushNamed(context, FavoriteScreen.routeName,
                        arguments: favs);
                  },
                  child: const Icon(Icons.format_list_bulleted),
                )),
          ],
        ),
        body: ListView(
          children: [
            InfoItem(name: "Alex", asFavs: false, favorite: favs),
            InfoItem(name: "Boob", asFavs: false, favorite: favs),
            InfoItem(name: "Binm", asFavs: false, favorite: favs),
            InfoItem(name: "Resti", asFavs: false, favorite: favs),
            InfoItem(name: "Godla", asFavs: false, favorite: favs),
            InfoItem(name: "MyMax", asFavs: false, favorite: favs),
            InfoItem(name: "Befa", asFavs: false, favorite: favs),
            InfoItem(name: "OnLaf", asFavs: false, favorite: favs),
            InfoItem(name: "Mess", asFavs: false, favorite: favs),
            InfoItem(name: "Roof", asFavs: false, favorite: favs),
            InfoItem(name: "Yuka", asFavs: false, favorite: favs),
            InfoItem(name: "Minq", asFavs: false, favorite: favs),
            InfoItem(name: "Fu", asFavs: false, favorite: favs),
          ],
        ));
  }
}
