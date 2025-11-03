import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

final connectivityStatusProvider = StreamProvider<InternetStatus>((ref) {
  final connection = InternetConnection();
  Timer? debounceTimer;
  final controller = StreamController<InternetStatus>();

  final subscription = connection.onStatusChange.listen((status) {
    debounceTimer?.cancel();
    debounceTimer = Timer(const Duration(seconds: 2), () {
      if (!controller.isClosed) {
        controller.add(status);
      }
    });
  });

  ref.onDispose(() {
    subscription.cancel();
    debounceTimer?.cancel();
    controller.close();
  });

  return controller.stream;
});

