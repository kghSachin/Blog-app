import 'dart:convert';

import 'package:chiya_startup/server/authentication/endpoints.dart';
import 'package:chiya_startup/server/enum/auth_enum.dart';
import 'package:dio/dio.dart';
import "package:http/http.dart" as http;

final dio = Dio();

class Authenticator {
  const Authenticator();
  String? get token => "";

  Future<SignInResult> login(String email, String password) async {
    try {
      print("email: $email, password: $password");

      var response = await dio.post(EndPoints.login,
          data: jsonEncode({"email": email, "password": password}));
      // var response = await http.post(Uri.parse(EndPoints.login),
      //     body: jsonEncode({"email": email, "password": password}),
      //     headers: {"Content-Type": "application/json"});
      print(response.data);
      switch (response.statusCode) {
        case 404:
          return SignInResult.userNotFound;
        case 400:
          return SignInResult.wrongPassword;
        case 200:
          //TODO: use decoded token to store the user info if success
          return SignInResult.success;
        default:
          return SignInResult.failed;
      }
    } catch (e) {
      print(e);
      return SignInResult.failed;
    }
  }
}
