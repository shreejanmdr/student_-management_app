import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student_management_starter/features/auth/presentation/navigator/login_navigator.dart';

final loginViewModelProvider = StateNotifierProvider<LoginViewModel, void>(
  (ref) => LoginViewModel(ref.read(loginViewNavigatorProvider)),
);

class LoginViewModel extends StateNotifier<void> {
  LoginViewModel(this.navigator) : super(null);

  final LoginViewNavigator navigator;

  void openRegisterView() {
    navigator.openRegisterView();
  }

  void openHomeVIew() {}
}
