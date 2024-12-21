import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_my_alice/src/core/constants/app_status.dart';
import 'package:flutter_my_alice/src/domain/repository/i_address_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'registration_bloc.freezed.dart';
part 'registration_event.dart';
part 'registration_state.dart';

@injectable
class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc(this._addressRepository) : super(const RegistrationState()) {
    on<_RegistrationInitial>(_initial);
  }

  final IAddressRepository _addressRepository;

  Future<void> _initial(
    _RegistrationInitial event,
    Emitter<RegistrationState> emit,
  ) async {
    await _addressRepository.getProvinces();
  }
}
