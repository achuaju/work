import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthService {
  final FlutterSecureStorage _secureStorage = FlutterSecureStorage();

  static const String _keyLoggedIn = 'isLoggedIn';

  Future<void> loginUser() async {
    // Implement your logic for user login
    await _secureStorage.write(key: _keyLoggedIn, value: 'true');
  }

  Future<bool> isLoggedIn() async {
    final String? value = await _secureStorage.read(key: _keyLoggedIn);
    return value == 'true';
  }

  Future<void> logoutUser() async {
    await _secureStorage.delete(key: _keyLoggedIn);
  }
}