import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'connectivity_notifier.g.dart';

@riverpod
class ConnectionStatus extends _$ConnectionStatus {
  late Timer debouncetimer;
  late final InternetConnection connection;
  late StreamController<InternetStatus> controller;

  @override
  Stream<InternetStatus> build() {
  
    controller = StreamController<InternetStatus>();
    connection = InternetConnection();
    connection.onStatusChange.listen((status) {
      debouncetimer.cancel();
      debouncetimer = Timer(Duration(seconds: 2), () {
        controller.add(status);
      });
    });
    return controller.stream;
  }
}

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
