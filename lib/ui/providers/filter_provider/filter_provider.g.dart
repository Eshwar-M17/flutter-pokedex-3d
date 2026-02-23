// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Filter)
const filterProvider = FilterProvider._();

final class FilterProvider extends $NotifierProvider<Filter, FilterModel> {
  const FilterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'filterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$filterHash();

  @$internal
  @override
  Filter create() => Filter();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FilterModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FilterModel>(value),
    );
  }
}

String _$filterHash() => r'8effadacb56975f5cbb64b322e00a282bc959bce';

abstract class _$Filter extends $Notifier<FilterModel> {
  FilterModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<FilterModel, FilterModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<FilterModel, FilterModel>,
              FilterModel,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
