import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student_management_starter/app/navigator/navigator.dart';
import 'package:student_management_starter/features/auth/presentation/navigator/register_navigator.dart';
import 'package:student_management_starter/features/auth/presentation/view/login_view.dart';

final loginViewNavigatorProvider = Provider((ref) => LoginViewNavigator());

//direct mixin(with) use garera navigate garne
//malai login kholni cha bhane mixin use garne
//aru kohlnu paryo bhane class use garne
class LoginViewNavigator with RegisterViewRoute {}

mixin LoginViewRoute {
  openLoginView() {
    NavigateRoute.popAndPushRoute(const LoginView());
  }
}
