import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/favs_provider.dart';
import '../widgets/favs_item.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final favsProvider = Provider.of<FavsProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Saved Suggestions")),
        ),
        body: ListView.builder(
          itemCount: favsProvider.favs.length,
          itemBuilder: (context, index) {
            return ChangeNotifierProvider.value(
              value: favsProvider.favs[index],
              child: const FavsItem(),
            );
          },
        ));
  }
}
