part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class RequestGoogleLogin extends LoginEvent {}
