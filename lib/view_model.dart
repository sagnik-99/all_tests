import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final viewModel = ChangeNotifierProvider.autoDispose<ViewModel>((ref) {
  return ViewModel();
});

class ViewModel extends ChangeNotifier {
  bool state = true;
  Widget con=Container();

  changeState() {
    state = !state;
    notifyListeners();
  }
  conChange(bool val){
    con=
        val?Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Hey"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Hey"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Hey"),
        ),
      ],
    ):Container();
    notifyListeners();
  }
}
