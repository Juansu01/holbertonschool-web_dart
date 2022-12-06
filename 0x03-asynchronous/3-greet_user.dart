import 'dart:convert';
import '3-util.dart';

greetUser() async {
  try {
    var data = await fetchUserData();
    var decodedData = json.decode(data);
    return "Hello ${decodedData['username']}";
  } catch (error) {
    return ("error caught: $error");
  }
}

loginUser() async {
  try {
    var isUserValid = await checkCredentials();
    if (isUserValid == true) {
      print("There is a user: true");
      return greetUser();
    } else {
      print("There is a user: false");
      return "Wrong credentials";
    }
  } catch (error) {
    return "error caught: $error";
  }
}
