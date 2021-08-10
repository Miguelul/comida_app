import 'package:http/http.dart' as http;
import '../../../constants.dart';

class MenuBroker {
  String baseUrl=apiUrl+"/api/menu";
  MenuBroker();
  Future<http.Response> get(String filter) async {
     Uri url= Uri.parse(baseUrl);
    if(filter!=null)  
      url =Uri.parse(baseUrl+filter);
    return await http.get(url);
  }
 
}