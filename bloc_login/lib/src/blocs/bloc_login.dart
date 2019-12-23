import 'dart:async';

class BlocLogin {
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

  //Ease of Access functions
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  Stream<String> get email => _emailController.stream;
  Stream<String> get password => _passwordController.stream;
}
