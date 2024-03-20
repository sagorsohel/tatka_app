import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());
  void startSplash() {
    Future.delayed(const Duration(seconds: 3), () {
      emit(SplashEnd());
    });
  }
}
