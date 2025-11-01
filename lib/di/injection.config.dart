// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:codefarms_core/services/api_service.dart' as _i537;
import 'package:codefarms_core/services/auth_service.dart' as _i658;
import 'package:codefarms_core/services/cloud_functions_service.dart' as _i388;
import 'package:codefarms_core/services/file_service.dart' as _i547;
import 'package:codefarms_core/widgets/bloc/user_session_bloc.dart' as _i162;
import 'package:codefarms_core/widgets/test_widgets/firebase_functions_test_controller.dart'
    as _i817;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i537.ApiService>(() => _i537.ApiService());
    gh.factory<_i388.CloudFunctionsService>(
      () => _i388.CloudFunctionsService(),
    );
    gh.factory<_i547.FileService>(() => _i547.FileService());
    gh.lazySingleton<_i162.UserSessionBloc>(() => _i162.UserSessionBloc());
    gh.lazySingleton<_i658.AgentiqAuthService>(
      () => _i658.FirebaseAuthService(gh<_i388.CloudFunctionsService>()),
    );
    gh.lazySingleton<_i817.FirebaseFunctionsTestController>(
      () => _i817.FirebaseFunctionsTestController(
        gh<_i388.CloudFunctionsService>(),
      ),
    );
    return this;
  }
}
