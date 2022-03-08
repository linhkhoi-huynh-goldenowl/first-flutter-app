import 'package:flutter/material.dart';
import 'package:my_app/provider/favs_provider.dart';
import 'package:my_app/screens/favorite_screen.dart';
import 'package:my_app/screens/main_screen.dart';
import 'package:provider/provider.dart';

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
      home: const MainScreen(title: 'Startup Name Generator'),
      routes: {FavoriteScreen.routeName: (context) => const FavoriteScreen()},
    );
  }
}
