import 'package:flutter/material.dart';
import 'package:my_app/models/info_person.dart';

class FavsProvider with ChangeNotifier {
  final List _favs = [];

  List<InfoPerson> get favs {
    return [..._favs];
  }

  void addFavorite(InfoPerson info) {
    if (checkName(info.name)) {
      _favs.removeWhere((item) => item.name == info.name);
    } else {
      _favs.add(info);
    }
    notifyListeners();
  }

  bool checkName(String name) {
    return (_favs.singleWhere((it) => it.name == name, orElse: () => null)) !=
        null;
  }
}
