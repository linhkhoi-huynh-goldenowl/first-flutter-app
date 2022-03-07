import 'package:flutter/material.dart';
import 'package:my_app/utils/favorites.dart';

import '../widgets/info_item.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Saved Suggestions")),
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(Icons.format_list_bulleted),
                )),
          ],
        ),
        body: ListView.builder(
          itemCount: Favorite.favs.length,
          itemBuilder: (context, index) {
            return InfoItem(
              name: Favorite.favs[index],
              asFavs: true,
            );
          },
        ));
  }
}
