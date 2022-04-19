import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:multivendor_food_delivery_admin/application/auth/auth_state.dart';
import 'package:multivendor_food_delivery_admin/domain/auth/i_auth_repo.dart';
import 'package:multivendor_food_delivery_admin/domain/auth/login_data.dart';
import 'package:multivendor_food_delivery_admin/domain/auth/registration_data.dart';
import 'package:multivendor_food_delivery_admin/infrastructure/auth/auth_repo.dart';

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier(AuthRepo());
});

class AuthNotifier extends StateNotifier<AuthState> {
  final IAuthRepo authRepo;
  AuthNotifier(this.authRepo) : super(AuthState.init());

  login(LoginData data) async {
    state = AuthState.init().copyWith(loading: true);
    await Future.delayed(const Duration(milliseconds: 500));
    final response = await authRepo.login(data).run();

    state = response
        .fold((l) => state.copyWith(failure: l), (r) => state.copyWith(user: r))
        .copyWith(loading: false);

    Logger().i(state);
  }

  registration(RegistrationData data) async {
    state = AuthState.init().copyWith(loading: true);
    await Future.delayed(const Duration(milliseconds: 500));

    final response = await authRepo.registration(data).run();
    Logger().i(response);

    state = response
        .fold((l) => state.copyWith(failure: l), (r) => state.copyWith(user: r))
        .copyWith(loading: false);
  }

  checkAuth() async {
    state = AuthState.init().copyWith(loading: true);

    final response = await authRepo.checkAuth();
    Logger().i(response);

    state = response
        .match((t) => state.copyWith(user: t), () => state)
        .copyWith(loading: false);
  }
}
