part of 'auth_bloc.dart';

///The [AuthState] contains itself var [status] & var [user]
class AuthState extends Equatable {
  const AuthState._({
    this.status = AuthenticationStatus.unknow,
    this.user = User.empty,
  });

  /// The [AuthState.unknown] is default state which indicates that the bloc
  /// does not yet know whether he current user is authenticated or not
  const AuthState.unknown() : this._();

  /// The [AuthState.authenticated] is state which indicates that user is
  /// current authenticated
  const AuthState.authenticated(User user)
      : this._(status: AuthenticationStatus.authenticated, user: user);

  /// The [AuthState.unauthenticated] is state which indicates that user is
  /// current not authenticated
  const AuthState.unauthenticated()
      : this._(status: AuthenticationStatus.unauthenticated);

  final AuthenticationStatus status;
  final User user;

  @override
  List<Object> get props => [];
}
