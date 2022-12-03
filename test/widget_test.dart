import 'dart:convert';
import 'package:fongkir/shared/shared.dart';
import 'package:http/http.dart' as http;

void main() async {
  Uri endPoint = Uri.parse('https://api.rajaongkir.com/starter/province');
  var response = await http.get(
    endPoint,
    headers: {'key': key},
  );

  if (response.statusCode != 200) {
    print('Load data gagal!');
  } else {
    var data = jsonDecode(response.body);
    print(data['rajaongkir']['results']);
  }
}
