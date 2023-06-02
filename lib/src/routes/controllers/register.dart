import 'dart:async';
import 'package:angel3_framework/angel3_framework.dart';

import '../../services/register/registerService.dart';

Future controllerRegister(Angel app) async {
  /// Controllers will not function unless wired to the application!
  app.post('/register', (req, res) async{
    try {
      //res.render('hello');
      final service = RegisterService();
      final result = await service.register(req, res);
      if (result.isNotEmpty) {
        return result;
      }
      throw AngelHttpException.badRequest();
    } on AngelHttpException catch (e) {
      if (e.statusCode == 400) {
         return "Algo deve ter dado errado, culpe os gnomos que ficam no seu PC";
      }
      print(e);
      throw AngelHttpException.unavailable().message;
    }
  });
}
