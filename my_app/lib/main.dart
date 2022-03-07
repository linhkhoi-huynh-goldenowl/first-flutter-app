import 'package:flutter/material.dart';
import 'package:my_app/screens/favorite_screen.dart';
import 'package:my_app/widgets/info_item.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text(widget.title)),
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FavoriteScreen()));
                  },
                  child: Icon(Icons.format_list_bulleted),
                )),
          ],
        ),
        body: ListView(
          children: const [
            InfoItem(name: "Alex", asFavs: false),
            InfoItem(name: "Ben", asFavs: false),
            InfoItem(name: "Jin", asFavs: false),
            InfoItem(name: "Crown", asFavs: false),
            InfoItem(name: "Jupiter", asFavs: false),
            InfoItem(name: "Gegalt", asFavs: false),
            InfoItem(name: "Bisti", asFavs: false),
            InfoItem(name: "Fame", asFavs: false),
            InfoItem(name: "Base", asFavs: false),
            InfoItem(name: "Minu", asFavs: false),
            InfoItem(name: "Gogo", asFavs: false),
            InfoItem(name: "Banna", asFavs: false),
            InfoItem(name: "Appp", asFavs: false),
            InfoItem(name: "Uber", asFavs: false),
          ],
        ));
  }
}
