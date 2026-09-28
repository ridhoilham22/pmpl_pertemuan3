import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  // TODO 1: simpan state login di sini (_isAuthenticated + _token + getter).
  bool _isAuthenticated = false;
  String? _token;

  bool get isAuthenticated => _isAuthenticated;
  String? get token => _token;

  Future<bool> login(String email, String password) async {
    // TODO 2: simulasi request login (delay 1 detik). Aturan lolos:
    // email tidak kosong dan password min 6 karakter → set state,
    // notifyListeners(), return true. Jika tidak, return false.
    await Future.delayed(const Duration(seconds: 1));
    if (email.isNotEmpty && password.length >= 6) {
      _isAuthenticated = true;
      _token = 'token_auth_dummy_12345';
      notifyListeners();
      return true;
    }
    return false;
  }

  // TODO 3: reset state + notifyListeners().
  void logout() {
    _isAuthenticated = false;
    _token = null;
    notifyListeners();
  }
}
