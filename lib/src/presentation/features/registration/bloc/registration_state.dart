part of 'registration_bloc.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState({
    @Default(AppStatus.initial) AppStatus status,
  }) = _RegistrationState;
}
