import '4-util.dart';
import 'dart:convert';

calculateTotal() async {
  try {
    var userData = await fetchUserData();
    var userId = jsonDecode(userData)['id'];
    var orderData = await fetchUserOrders(userId);
    var price = 0.0;

    List<dynamic> productList = jsonDecode(orderData);
    
    productList.forEach((product) =>
      var productPrice = await fetchProductPrice(product);
      price += num.parse(productPrice);
    );

    return price;

  } catch (error) {
    return -1;
  }
}
