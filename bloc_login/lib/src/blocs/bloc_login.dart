import 'dart:async';

class BlocLogin extends Object with Validators {
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

  //Ease of Access functions
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password => _passwordController.stream.transform(validatePassword);

  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}

class Validators {
  final validateEmail =
      StreamTransformer<String, String>.fromHandlers(
        handleData: (email, sink) {
          if (email.contains('@')) {
            sink.add(email);
          } else {
            sink.addError('Enter a valid email');
          }
        });
  final validatePassword =
      StreamTransformer<String, String>.fromHandlers(
        handleData: (password, sink) {
          if (password.length > 3) {
            sink.add(password);
          } else {
            sink.addError('Create a password longer than 3 characters');
          }
        });
}

final bloc = BlocLogin();