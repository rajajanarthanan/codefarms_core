import 'package:agentiq/agentiq.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_session_bloc.freezed.dart';

@freezed
class UserSessionEvent with _$UserSessionEvent {
  const factory UserSessionEvent.initEvent() = InitEvent;
  const factory UserSessionEvent.userSessionUpdatedEvent(AgentiqUser? user) =
      UserSessionUpdatedEvent;
  const factory UserSessionEvent.userSessionLogOutRequestEvent() =
      UserSessionLogOutRequestEvent;
}

@freezed
abstract class UserSessionState with _$UserSessionState {
  const factory UserSessionState({@Default(null) AgentiqUser? user}) =
      _UserSessionState;
}

@lazySingleton
class UserSessionBloc extends Bloc<UserSessionEvent, UserSessionState> {
  UserSessionBloc() : super(const UserSessionState()) {
    on<UserSessionUpdatedEvent>((event, emit) {
      if (event.user != null) {
        emit(state.copyWith(user: event.user));
      }
    });

    on<UserSessionLogOutRequestEvent>((event, emit) {
      emit(state.copyWith(user: null));
    });
  }
}
