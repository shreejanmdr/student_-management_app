import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student_management_starter/features/splash/navigator/splash_navigator.dart';

//

final splashViewModelProvider =
    StateNotifierProvider<SplashViewModel, void>((ref) {
  final navigator = ref.read(splashgViewNavigatorProvider);
  return SplashViewModel(navigator);
});

//ALWAYS navigation garda viewModel use garne
class SplashViewModel extends StateNotifier<void> {
  //super parameter pass garna ko lagi lekheko
  SplashViewModel(this.navigator) : super(null);

  final SplashViewNavigator navigator;

  //open Login page
  void openLoginView() {
    Future.delayed(const Duration(seconds: 1), () {
      navigator.openLoginView();
    });
  }

  //dashboard page
  void openHomeView() {
    //ahile khali because dashboard kjo code rakheko chaina
  }
}
