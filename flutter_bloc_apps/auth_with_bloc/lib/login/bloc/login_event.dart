part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

/// [LoginUsernameChanged] notifies the bloc that the username
/// has been modified.
class LoginUsernameChanged extends LoginEvent {
  const LoginUsernameChanged({required this.username});

  final String username;

  @override
  List<Object> get props => [username];
}

/// [LoginPasswordChanged] notifies the bloc that the password
/// has been modified.
class LoginPasswordChanged extends LoginEvent {
  const LoginPasswordChanged({required this.password});

  final String password;

  @override
  List<Object> get props => [password];
}

/// [LoginSubmitted] nofifies the bloc that the form has been submitted.
class LoginSubmitted extends LoginEvent {
  const LoginSubmitted();
}
