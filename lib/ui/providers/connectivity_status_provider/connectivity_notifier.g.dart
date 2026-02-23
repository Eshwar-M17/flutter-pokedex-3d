// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connectivity_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ConnectionStatus)
const connectionStatusProvider = ConnectionStatusProvider._();

final class ConnectionStatusProvider
    extends $StreamNotifierProvider<ConnectionStatus, InternetStatus> {
  const ConnectionStatusProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'connectionStatusProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$connectionStatusHash();

  @$internal
  @override
  ConnectionStatus create() => ConnectionStatus();
}

String _$connectionStatusHash() => r'cd1bfdb11a7094523cb098c1daacd6ca5f31051b';

abstract class _$ConnectionStatus extends $StreamNotifier<InternetStatus> {
  Stream<InternetStatus> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<InternetStatus>, InternetStatus>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<InternetStatus>, InternetStatus>,
              AsyncValue<InternetStatus>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
