import 'package:chiya_startup/state/providers/auth_state_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// final isLoadingProvider = StateProvider<bool>((ref) {
//   return false;
// });

final isLoadingProvider = Provider<bool>((ref) {
  final authResult = ref.watch(authStateProvider);
  return false;
});
