// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon3d_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Pokemon3DList)
const pokemon3DListProvider = Pokemon3DListProvider._();

final class Pokemon3DListProvider
    extends $AsyncNotifierProvider<Pokemon3DList, List<Pokemon3dModel>> {
  const Pokemon3DListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pokemon3DListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pokemon3DListHash();

  @$internal
  @override
  Pokemon3DList create() => Pokemon3DList();
}

String _$pokemon3DListHash() => r'd69249fc7cf881e9e3fcd4e1ebb3066c4fa22b2c';

abstract class _$Pokemon3DList extends $AsyncNotifier<List<Pokemon3dModel>> {
  FutureOr<List<Pokemon3dModel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<AsyncValue<List<Pokemon3dModel>>, List<Pokemon3dModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<Pokemon3dModel>>,
                List<Pokemon3dModel>
              >,
              AsyncValue<List<Pokemon3dModel>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
