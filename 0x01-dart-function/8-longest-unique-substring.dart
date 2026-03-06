String longestUniqueSubstring(String str){
    int index;
    Set<String> seen = {};
    String result = "";

    for (index = 0; index < str.length; index++){
        String char = str[index];

        if (!seen.contains(char)){
            seen.add(char);
            result += char;
        }
    }
    return result;
}