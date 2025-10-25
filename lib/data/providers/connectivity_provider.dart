import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

final connectivityNotifier = StreamProvider((ref) {
  final connection = InternetConnection();
  return connection.onStatusChange;
});
