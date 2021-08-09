
import 'package:comida_app/src/data/providers/remote/productoAleProv.dart';
import 'package:comida_app/src/data/repositories/ProductoAleRep.dart';
import 'package:comida_app/src/data/repositories_implementation/ProductoAleRepInplem.dart';
import 'package:comida_app/src/helpers/get.dart';


abstract class DependencyInjection {
 static void initialize() {

    final ProductoAleRepImp productoRepository = ProductoAleRepImp(
      ProductoProvider(),
    );

    Get.i.put<ProductoRepository>(productoRepository);    
  }
}




  