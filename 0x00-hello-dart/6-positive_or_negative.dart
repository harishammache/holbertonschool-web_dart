void main(List<String> args){
    int number = int.parse(args[0]);

    if (number > 0){
        print("$number is positiv");
    }
    if (number == 0){
        print("$number is zero");
    }
    if (number < 0){
        print("$number is negative");
    }
}