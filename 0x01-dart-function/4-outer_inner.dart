void outer(String name, String id){
    String inner(){
        var parts = name.split(" ");
        var initial = parts[1][0];
        var firstname = parts[0];
        return "Hello Agent ${initial}.${firstname} your id is ${id}";
    }
    print(inner());
}