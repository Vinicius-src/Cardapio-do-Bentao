//pegar os dados no banco firebase em processo

import 'package:http/http.dart' as http;

class PegarDados {
  static Uri url = Uri.https("jjjjjjjjjjjj", "kkkkkkkkkkkkkk");

  Future<void> getInformacaodoBD() async {
    return http.get(url).then((value) {
      print(value.body);
    });
  }
}
