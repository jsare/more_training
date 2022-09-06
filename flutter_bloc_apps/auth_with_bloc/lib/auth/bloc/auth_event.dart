part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

/// The [AuthStatusChanged] notifies the bloc of a change to the user's [AuthenticationStatus]
class AuthStatusChanged extends AuthEvent {
  const AuthStatusChanged({required this.status});

  final AuthenticationStatus status;

  @override
  List<Object> get props => [status];
}

/// The [AuthLogoutRequest] noties the bloc of a logout request
class AuthLogoutRequested extends AuthEvent {}
