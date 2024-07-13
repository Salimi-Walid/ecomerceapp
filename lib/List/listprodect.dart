class Shoes {
  final String name;
  final double prix;
  final String imagepath;
  Shoes({required this.name, required this.prix, required this.imagepath});
  // ignore: unused_element
  String get _name => name;
  // ignore: unused_element
  double get _prix => prix;
  // ignore: unused_element
  String get _imagepath => imagepath;
}

List shoesezy = [
  Shoes(name: "SHoes 1", prix: 22, imagepath: "yeezy-Black-350-v2-.png"),
  Shoes(name: "SHoes 2", prix: 15, imagepath: "yeezy-boost-350-v2-supreme.png"),
  Shoes(name: "SHoes 3", prix: 33, imagepath: "yeezy-boost-350-v2-.png"),
  Shoes(name: "SHoes 4", prix: 25, imagepath: "Yeezy-350-Boost-V2-pack.png"),
  Shoes(name: "SHoes 5", prix: 23, imagepath: "yeezy-Black-350-v2-.png"),
];
