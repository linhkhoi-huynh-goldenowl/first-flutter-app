import 'package:flutter/material.dart';
import 'package:my_app/models/info_person.dart';

class FavsProvider with ChangeNotifier {
  final List _favs = [];

  List<InfoPerson> get favs {
    return [..._favs];
  }

  void addFavorite(InfoPerson info) {
    if ((_favs.singleWhere((it) => it.name == info.name, orElse: () => null)) !=
        null) {
      _favs.removeWhere((item) => item.name == info.name);
    } else {
      _favs.add(info);
    }
    notifyListeners();
  }
}
