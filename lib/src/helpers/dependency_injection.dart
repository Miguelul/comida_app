import 'package:comida_app/src/data/providers/remote/productoAleProv.dart';
import 'package:comida_app/src/data/repositories_implementation/ProductoAleRepInplem.dart';
import 'package:comida_app/src/helpers/get.dart';

abstract class DependencyInjection {

  final ProductoAleRepImp MenuRepsitory = ProductoAleRepImp(ProductoProvider());

Get.i.put<ProductoProvider>(MenuRepsitory);

}
  