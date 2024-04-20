import 'package:chiya_startup/server/enum/auth_enum.dart';

class AuthState {
  AuthResult authResult;
  String? userId;
  bool isLoading;
  AuthState({
    required this.authResult,
    required this.userId,
    required this.isLoading,
  });

  AuthState.unknown()
      : authResult = AuthResult.failed,
        userId = null,
        isLoading = false;

  AuthState copyWith({
    AuthResult? authResult,
    String? userId,
    bool? isLoading,
  }) {
    return AuthState(
      authResult: authResult ?? this.authResult,
      userId: userId ?? this.userId,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  bool operator ==(covariant AuthState other) {
    if (identical(this, other)) return true;

    return other.authResult == authResult &&
        other.userId == userId &&
        other.isLoading == isLoading;
  }

  @override
  int get hashCode =>
      authResult.hashCode ^ userId.hashCode ^ isLoading.hashCode;
}
