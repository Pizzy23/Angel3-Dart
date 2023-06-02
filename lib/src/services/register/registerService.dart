// ignore: file_names
import 'package:angel3_framework/angel3_framework.dart';
import 'package:angel3_orm/angel3_orm.dart';

import '../../models/register.dart';
import '../../util/headersClear.dart';

class RegisterService {
  register(req, res) async {
    try {
      var executor = req.container!.make<QueryExecutor>();
      var query = RegisterQuery();
      final headers = req.headers;
      final clearHeaders = HeadersClear();
      final clear = clearHeaders.calls(headers);
      var confirmPassword = clear['confirmPassword'];
      var password = clear['password'];
      var username = clear['username'];
      if (password == confirmPassword) {
        query.values
          ..username = clear['username']
          ..password = clear['password'];
        var post = await query.insert(executor);
        return "Parabens novo usuario criado com sucesso :) ${post}";
      } else if (password != confirmPassword) {
        throw AngelHttpException.notAcceptable();
      }
    } on AngelHttpException catch (e) {
      if (e.statusCode == 406) {
        return "Senhas divergentes. Por insira uma senha valida";
      }
      throw AngelHttpException.unavailable().message;
    }
  }
}
