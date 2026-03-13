class Password{
    String _password = "";

    Password({String password = ""}) {
        _password = password;
    }

    String get password => _password;

    set password(String value) {
        _password = value;
    }

    bool isValid(){
        if (_password.length >= 8 && 
        _password.length <= 16 &&
        _password.contains(RegExp(r'[A-Z]')) &&
        _password.contains(RegExp(r'[a-z]')) && 
        _password.contains(RegExp(r'[0-9]'))
        ){
            return true;
        }
        return false;
    }
    
    String toString(){
        return "Your Password is ${_password}";
    }
}