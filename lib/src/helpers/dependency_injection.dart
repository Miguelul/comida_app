
import 'package:comida_app/src/data/providers/remote/authentication_provider.dart';
import 'package:comida_app/src/data/providers/remote/categoryProvider.dart';
import 'package:comida_app/src/data/providers/remote/productoAleProv.dart';
import 'package:comida_app/src/data/repositories/ProductoAleRep.dart';
import 'package:comida_app/src/data/repositories/authentication_repository.dart';
import 'package:comida_app/src/data/repositories/categoryRepository.dart';
import 'package:comida_app/src/data/repositories_implementation/ProductoAleRepInplem.dart';
import 'package:comida_app/src/data/repositories_implementation/authentication_repository_impl.dart';
import 'package:comida_app/src/data/repositories_implementation/categoryReposiImple.dart';
import 'package:comida_app/src/helpers/get.dart';


abstract class DependencyInjection {
 static void initialize() {

    final AuthenticationRepository authenticationRepository = AuthenticationRepositoryImpl(
        AuthenticationProvider(),
      );


    final ProductoAleRepImp productoRepository = ProductoAleRepImp(
      ProductoProvider(),
    );

     final CategoryAleRepIm categoryRepository = CategoryAleRepIm(
      CategoryProvider(),
    );


    Get.i.put<ProductoRepository>(productoRepository);   
    Get.i.put<CategoryRepository>(categoryRepository);  
    Get.i.put<AuthenticationRepository>(authenticationRepository);
    Get.i.put<String>("API_KEY", tag: "apiKey");
    Get.i.put<String>("SECRET", tag: "secret");
  }
}




  