import "package:http/http.dart" as http;
import 'dart:convert' as convert;

printBbCharacters() async {
  var res = Uri.https("breakingbadapi.com", "/api/characters/");
  try {
    var response = await http.get(res);
    if (response.statusCode == 200) {
      List<dynamic> jsonRes = convert.jsonDecode(response.body);
      for (int i = 0; i < jsonRes.length; i++) {
        print(jsonRes[i]['name']);
      }
    }
  } catch (error) {
    return "error caught: $error";
  }
}
