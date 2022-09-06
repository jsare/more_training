import 'dart:async';

import 'package:user_repository/src/models/models.dart';
import 'package:uuid/uuid.dart';

///[UserRepository] exposes a single method [getUser]
// for this simple example
class UserRepository {
  User? _user;

  Future<User?> getUser() async {
    if (_user != null) return _user;
    return Future.delayed(
      Duration(milliseconds: 300),
      () => _user = User(const Uuid().v4()),
    );
  }
}
