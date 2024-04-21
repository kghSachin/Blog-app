import 'dart:convert';
import 'package:chiya_startup/server/authentication/endpoints.dart';
import 'package:chiya_startup/server/enum/auth_enum.dart';
import 'package:dio/dio.dart';

final dio = Dio();

class Authenticator {
  const Authenticator();
  String? get token => "";

  Future<AuthResult> login(String email, String password) async {
    try {
      var response = await dio.post("http://192.168.56.1:8000/api/login",
          data: jsonEncode({"email": email, "password": password}));

      switch (response.statusCode) {
        case 404:
          return AuthResult.userNotFound;
        case 400:
          return AuthResult.wrongPassword;
        case 200:
          //TODO: use decoded token to store the user info if success
          return AuthResult.success;
        default:
          return AuthResult.failed;
      }
    } catch (e) {
      return AuthResult.failed;
    }
  }

  Future<AuthResult> register(
      String email, String password, String username) async {
    try {
      var response = await dio.post(EndPoints.register,
          data: jsonEncode(
              {"email": email, "password": password, "username": username}));
      switch (response.statusCode) {
        case 404:
          return AuthResult.emailAlreadyInUse;
        case 400:
          return AuthResult.usernameAlreadyInUse;
        case 201:
          return AuthResult.success;
        default:
          return AuthResult.failed;
      }
    } catch (error) {
      return AuthResult.failed;
    }
  }
}
