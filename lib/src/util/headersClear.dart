// ignore_for_file: file_names

class HeadersClear {
  calls(headers) {
    final clear = _headersClear(headers);
    final removed = _removeKeys(clear);
    final changes = _changes(removed);
    return changes;
  }

  _headersClear(headers) {
    final Map<String, dynamic> headerValues = {};
    headers.forEach((name, values) {
      headerValues[name] = values;
    });
    return headerValues;
  }

  _removeKeys(headers) {
    headers.remove('user-agent');
    headers.remove('connection');
    headers.remove('accept');
    headers.remove('accept-encoding');
    headers.remove('postman-token');
    headers.remove('content-length');
    headers.remove('host');
    headers.remove('content-type');
    return headers;
  }

  _changes(removed) {
      var removedConfirmPassword = removed['confirmpassword'];
      var confirmPassword = removedConfirmPassword[0];
      var removedPassword = removed['password'];
      var pass = removedPassword[0];
      var removedUsername = removed['username'];
      var username = removedUsername[0];
      final Map<String, dynamic> value = {
        'username': username,
        'password': pass,
        'confirmPassword': confirmPassword,
      };
      return value;
  }
}
