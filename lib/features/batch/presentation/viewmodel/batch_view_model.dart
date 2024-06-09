import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student_management_starter/features/batch/presentation/navigator/batch_navigator.dart';


final BatchViewModelProvider = StateNotifierProvider<BatchViewModel, void>(
  (ref) => BatchViewModel(ref.read(BatchViewNavigatorProvider)),
);

class BatchViewModel extends StateNotifier<void> {
  BatchViewModel(this.navigator) : super(null);

  final BatchViewNavigator navigator;

  void openRegisterView() {
    navigator.openRegisterView();
  }

  void openHomeVIew() {}
}
