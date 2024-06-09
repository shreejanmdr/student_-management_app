import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student_management_starter/app/navigator/navigator.dart';
import 'package:student_management_starter/features/auth/presentation/navigator/register_navigator.dart';
import 'package:student_management_starter/features/batch/presentation/view/batch_view.dart';

final BatchViewNavigatorProvider = Provider((ref) => BatchViewNavigator());

//direct mixin(with) use garera navigate garne
//malai Batch kholni cha bhane mixin use garne
//aru kohlnu paryo bhane class use garne
class BatchViewNavigator with RegisterViewRoute {}

mixin BatchViewRoute {
  openBatchView() {
    NavigateRoute.popAndPushRoute(const BatchView());
  }
}
