import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final viewModel = ChangeNotifierProvider.autoDispose<ViewModel>((ref) {
  return ViewModel();
});

class ViewModel extends ChangeNotifier {
  bool state = false;

  changeState() {
    state = !state;
    notifyListeners();
  }
}
