import 'dart:async';
import 'package:angel3_framework/angel3_framework.dart';

import '../../services/login/loginService.dart';


Future controllerRegister(Angel app) async {
  /// Controllers will not function unless wired to the application!
  app.get('/register/', (req, res) {
    try {
      //res.render('hello');
      final service = LoginService();
      final result = service.login(req, res);
      if (result.isNotEmpty) {
        return result;
      }
    } catch (e) {
      print(e);
      throw AngelHttpException.unavailable().message;
    }
  });
}
