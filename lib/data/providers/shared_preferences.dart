import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final sharedPreferences = Provider.autoDispose<SharedPreferencesWithCache>(
  (ref) => throw UnimplementedError(),
);
