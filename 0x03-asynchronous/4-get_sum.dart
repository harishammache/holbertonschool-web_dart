import "4-util.dart";
import "dart:convert";

Future<double> calculateTotal() async {
    try {
        String userData = await fetchUserData();
        Map<String, dynamic> userMap = jsonDecode(userData);
        String userId = userMap['id'];

        String ordersJson = await fetchUserOrders(userId);
        List<dynamic> orders = jsonDecode(ordersJson);

        if (orders == null) {
            return 0;
        }

        double total = 0;
        for (var product in orders) {
            String priceJson = await fetchProductPrice(product);
            num price = jsonDecode(priceJson);
            total += price.toDouble();
        }
        return total;
    }
    catch (e){
        return -1;
    }
}