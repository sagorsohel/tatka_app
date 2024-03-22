import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/repository/repository.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository authRepository;
  LoginBloc(this.authRepository) : super(LoginInitial()) {
    on<RequestGoogleLogin>((event, emit) async {
      emit(LoginLoading());
      final user = await authRepository.signInWithGoogle();
      emit(LoginSuccess());
    });
  }
}
