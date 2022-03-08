import 'package:flutter/material.dart';
import 'package:my_app/utils/favorites.dart';

import '../widgets/info_item.dart';

class FavoriteScreen extends StatefulWidget {
  static const routeName = '/Favorite';
  FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    final favs = ModalRoute.of(context)!.settings.arguments as Favorite;

    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Saved Suggestions")),
        ),
        body: ListView.builder(
          itemCount: favs.getFavoriteCount(),
          itemBuilder: (context, index) {
            return InfoItem(
              name: favs.getFavoriteItem(index),
              asFavs: true,
              favorite: favs,
            );
          },
        ));
  }
}
