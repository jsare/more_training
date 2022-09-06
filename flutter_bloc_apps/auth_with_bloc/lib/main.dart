import 'package:auth_repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:user_repository/user_repository.dart';
import 'package:flutter/widgets.dart';
import 'package:auth_with_bloc/app.dart';

void main() {
  runApp(
    App(
      authenticationRepository: AuthenticationRepository(),
      userRepository: UserRepository(),
    ),
  );
}
