import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tugas_akhir/models/shopping_cart/Get.dart';

Future<Get> fetchGet() async {
  final response = await http.get(Uri.parse('https://pbp-c07.herokuapp.com/get_json/'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Get.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}