import "4-util.dart";
import "dart:convert";

Future<int> calculateTotal() async {
    try {
        String userData = await fetchUserData();
        Map<String, dynamic> userMap = jsonDecode(userData);
        String userId = userMap['id'];

        String ordersJson = await fetchUserOrders(userId);
        List<dynamic> orders = jsonDecode(ordersJson);

        double total = 0;
        for (var product in orders) {
            String priceJson = await fetchProductPrice(product);
            double price = jsonDecode(priceJson);
            total += price;
        }
        return total;
    }
    catch (e){
        return -1;
    }
}