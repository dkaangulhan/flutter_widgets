import 'package:flutter/foundation.dart';

/// A class that extends [ChangeNotifier] and adds a check to see if the object
/// has been disposed before calling [notifyListeners].
class CommonChangeNotifier extends ChangeNotifier {
  bool _isDisposed = false;

  @override
  void dispose() {
    _isDisposed = true;
    super.dispose();
  }

  @override
  void notifyListeners() {
    if (_isDisposed) return;
    super.notifyListeners();
  }
}
