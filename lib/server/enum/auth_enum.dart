enum AuthResult {
  success,
  emailAlreadyInUse,
  userNotFound,
  wrongPassword,
  usernameAlreadyInUse,
  failed,
}

extension AuthResultExt on AuthResult {
  String get message {
    switch (this) {
      case AuthResult.success:
        return 'Success';
      case AuthResult.emailAlreadyInUse:
        return 'Email already in use';
      case AuthResult.userNotFound:
        return 'User not found';
      case AuthResult.wrongPassword:
        return 'Wrong password';
      case AuthResult.usernameAlreadyInUse:
        return 'Username already in use';
      case AuthResult.failed:
        return 'Failed';
      default:
        return 'Error! its not you its us!';
    }
  }
}
