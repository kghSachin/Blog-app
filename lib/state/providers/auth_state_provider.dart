import 'package:chiya_startup/state/models/auth_model.dart';
import 'package:chiya_startup/state/notifiers/auth_state_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authStateProvider =
    StateNotifierProvider<AuthStateNotifier, AuthState>((ref) {
  return AuthStateNotifier();
});
