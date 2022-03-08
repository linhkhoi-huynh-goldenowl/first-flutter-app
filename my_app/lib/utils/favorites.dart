class Favorite {
  List favs = <String>[];

  int getFavoriteCount() {
    return favs.length;
  }

  addFavorite(String name) {
    if (favs.contains(name)) {
      favs.remove(name);
    } else {
      favs.add(name);
    }
  }

  String getFavoriteItem(int index) {
    return favs[index];
  }
}
