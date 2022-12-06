import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
  var userData = await fetchUserData();
  var decodedData = json.decode(userData);

  return decodedData["id"];
}
