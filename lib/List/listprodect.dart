class Shoes {
  final String name;
  final String prix;
  final String imagepath;
  Shoes({required this.name, required this.prix, required this.imagepath});
  String get _name => name;
  String get _prix => prix;
  String get _imagepath => imagepath;
}

List shoesezy = [
  Shoes(name: "SHoes", prix: "22.00", imagepath: "yeezy-Black-350-v2-.png"),
  Shoes(
      name: "SHoes",
      prix: "22.00",
      imagepath: "yeezy-boost-350-v2-supreme.png"),
  Shoes(name: "SHoes", prix: "22.00", imagepath: "yeezy-boost-350-v2-.png"),
  Shoes(name: "SHoes", prix: "22.00", imagepath: "Yeezy-350-Boost-V2-pack.png"),
  Shoes(name: "SHoes", prix: "22.00", imagepath: "yeezy-Black-350-v2-.png"),
];
