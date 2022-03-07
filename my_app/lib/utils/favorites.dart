class Favorite {
  static List favs = <String>[];

  static void addFavorite(String name) {
    if (favs.contains(name)) {
      favs.remove(name);
    } else {
      favs.add(name);
    }
  }
}
