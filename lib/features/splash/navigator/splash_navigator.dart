import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student_management_starter/features/auth/presentation/navigator/login_navigator.dart';
import 'package:student_management_starter/features/splash/presentation/viewmodel/splash_view_model.dart';

final splashgViewNavigatorProvider =
    Provider<SplashViewNavigator>((ref) => SplashViewNavigator());

//this class will be used to navigate LoginView
class SplashViewNavigator with LoginViewRoute{}

mixin SplashViewRoute {}

