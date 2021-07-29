import 'package:meta/meta.dart' show required;

class MenuAle {
  final int id;
  final String name, imagen;
  final double price, rate;

  MenuAle({
    @required this.id,
    @required this.name,
    @required this.imagen,
    @required this.price,
    @required this.rate,
  });
}
