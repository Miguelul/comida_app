import 'package:comida_app/src/data/models/menuale.dart';
import 'package:comida_app/src/data/providers/remote/productoAleProv.dart';
import 'package:comida_app/src/data/repositories/ProductoAleRep.dart';

class ProductoAleRepImp implements ProductoRepository {
  final ProductoProvider _provider;

  ProductoAleRepImp(this._provider);
  @override
  Future<List<MenuAle>> getMenuAle() {
    return _provider.getMenuAle();
  }
}
