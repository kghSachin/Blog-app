import 'package:chiya_startup/server/authentication/authenticator.dart';
import 'package:chiya_startup/state/models/auth_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthStateNotifier extends StateNotifier<AuthState> {
  final _authenticator = const Authenticator();
  AuthStateNotifier() : super(AuthState.unknown());

  Future<void> login(String email, String password) async {
    state = state.copyWith(isLoading: true);
    final result = await _authenticator.login(email, password);
    state = state.copyWith(
      authResult: result,
      isLoading: false,
    );
  }
}




// class AuthStateNotifier extends StateNotifier<AuthState> {
//   final _authenticator = const Authenticator();
//   final _userInfoStorage = const UserInfoStorage();
//   AuthStateNotifier() : super(const AuthState.unknown()) {
//     if (_authenticator.isAlreadyLoggedIn) {
//       state = AuthState(
//         result: AuthResult.success,
//         isLoading: false,
//         userId: _authenticator.userId,
//       );
//     }
//   }
//   Future<void> logOut() async {
//     state = state.copiedWithIsLoading(true);
//     await _authenticator.logOut();
//     state = const AuthState.unknown();
//   }

//   Future<void> loginWithGoogle() async {
//     state = state.copiedWithIsLoading(true);
//     final result = await _authenticator.loginWithGoogle();
//     final userId = _authenticator.userId;
//     if (result == AuthResult.success && userId != null) {
//       await saveUserInfo(
//         userId: userId,
//       );
//     }
//     state = AuthState(
//       result: result,
//       isLoading: false,
//       userId: userId,
//     );
//   }

//   Future<void> loginWithFacebook() async {
//     state = state.copiedWithIsLoading(true);
//     final result = await _authenticator.loginWithFacebook();
//     final userId = _authenticator.userId;
//     if (result == AuthResult.success && userId != null) {
//       await saveUserInfo(userId: userId);
//     }
//     state = AuthState(
//       result: result,
//       isLoading: false,
//       userId: userId,
//     );
//   }

// // why cant we use authenticator user id ?? bcz its optional there and here we need it
//   Future<void> saveUserInfo({
//     required UserId userId,
//   }) =>
//       _userInfoStorage.saveUserInfo(
//         userId: userId,
//         displayName: _authenticator.displayName,
//         email: _authenticator.email,
//       );
// }
