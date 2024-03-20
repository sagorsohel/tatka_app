part of 'remember_switch_cubit.dart';

@immutable
abstract class RememberSwitchState {}

class RememberSwitchInitial extends RememberSwitchState {}

class ChangeSwitchState extends RememberSwitchState {
  final bool value;

  ChangeSwitchState(this.value);
}
