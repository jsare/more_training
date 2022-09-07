part of 'login_bloc.dart';

/// [LoginState] contains [status] of the form as well [username] & [password]
/// input states
class LoginState extends Equatable {
  const LoginState({
    this.status = FormzStatus.pure,
    this.username = const Username.pure(),
    this.password = const Password.pure(),
  });

  final FormzStatus status;
  final Username username;
  final Password password;

  LoginState copywith({
    FormzStatus? status,
    Username? username,
    Password? password,
  }) {
    return LoginState(
      status: status ?? this.status,
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }

  @override
  List<Object?> get props => [status, username, password];
}

// The Username & Password models are used as part of the LoginState, and the
// status is also part of the package:formz