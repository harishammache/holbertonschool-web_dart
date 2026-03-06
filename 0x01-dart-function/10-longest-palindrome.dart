import '9-palindrome.dart';

String longestPalindrome(String s) {
    String longest = "";

    for (int start = 0; start <= s.length; start++) {
        for (int end = start + 3; end <= s.length; end++) {
        String sub = s.substring(start, end);
        if (isPalindrome(sub) && sub.length > longest.length) {
            longest = sub;
        }
        }
    }

    if (longest.isEmpty)
        return "none";
    else
        return longest;
}