int add(int a, int b){
    int result = a + b;
    return result;
}

int sub(int a, int b){
    int result = a - b;
    return result;
}

String showFunc(int a, int b){
    int sum = add(a, b);
    int difference = sub(a, b);
    String result = 'Add ${a} + ${b} = ${sum}\nSub ${a} - ${b} = ${difference}';
    return result;
}