import 'package:flutter/material.dart';
import 'package:my_app/provider/favs_provider.dart';
import 'package:my_app/screens/favorite_screen.dart';
import 'package:my_app/widgets/info_item.dart';
import 'package:provider/provider.dart';

import 'utils/favorites.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FavsProvider()),
      ],
      child: const MyApp(),
    ),
  );
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
      routes: {FavoriteScreen.routeName: (context) => const FavoriteScreen()},
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
