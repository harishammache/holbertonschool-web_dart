import "1-util.dart";
import "dart:convert";

Future<String> getUserId() async {
    String user = await fetchUserData();
    Map<String, dynamic> userMap = jsonDecode(user);

    return userMap['id'];
}