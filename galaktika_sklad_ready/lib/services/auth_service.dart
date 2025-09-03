import 'package:flutter/material.dart';

enum Role { admin, worker }

class UserAccount {
  final String email;
  final Role role;
  UserAccount(this.email, this.role);
}

class AuthService extends ChangeNotifier {
  UserAccount? _currentUser;
  UserAccount? get currentUser => _currentUser;

  // Демо-аккаунты
  static const _admin = {'email': 'admin@galaktika.com', 'password': '123456'};
  static const _worker = {'email': 'worker@galaktika.com', 'password': '123456'};

  Future<void> signIn(String email, String password) async {
    await Future.delayed(const Duration(milliseconds: 300));
    if (email.trim().toLowerCase() == _admin['email'] && password == _admin['password']) {
      _currentUser = UserAccount(email, Role.admin);
    } else if (email.trim().toLowerCase() == _worker['email'] && password == _worker['password']) {
      _currentUser = UserAccount(email, Role.worker);
    } else {
      throw Exception('Неверный логин или пароль');
    }
    notifyListeners();
  }

  void signOut() {
    _currentUser = null;
    notifyListeners();
  }
}