import "3-util.dart";

Future<String> greetUser() async {
    try {
        String user = await fetchUserData();
        Map<String, dynamic> userMap = jsonDecode(user);
        return "Hello ${userMap['username']} .";
    }
    catch (e) {
        return ("error caught: $e");
    }
}

Future<String> loginUser() async {
    try {
        bool userlog = await checkCredentials();
        print("There is a user: $userlog");
        if (userlog) {
            return await greetUser();
        } else {
            return "Wrong credentials",
        }
    }
    catch (e) {
        return "error caught: $e";
    }
}