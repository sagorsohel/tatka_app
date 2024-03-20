import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'remember_switch_state.dart';

class RememberSwitchCubit extends Cubit<RememberSwitchState> {
  RememberSwitchCubit() : super(RememberSwitchInitial());
  void toggleSwitch(bool value) {
    emit(ChangeSwitchState(value));
  }
}
