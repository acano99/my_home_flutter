// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insert_day_menu_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$insertDayMenuUseCaseHash() =>
    r'a390f0b3b44f2c4fe12ddb781d2780df1235c499';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [insertDayMenuUseCase].
@ProviderFor(insertDayMenuUseCase)
const insertDayMenuUseCaseProvider = InsertDayMenuUseCaseFamily();

/// See also [insertDayMenuUseCase].
class InsertDayMenuUseCaseFamily extends Family<AsyncValue<int>> {
  /// See also [insertDayMenuUseCase].
  const InsertDayMenuUseCaseFamily();

  /// See also [insertDayMenuUseCase].
  InsertDayMenuUseCaseProvider call(DayMenu dayMenu) {
    return InsertDayMenuUseCaseProvider(dayMenu);
  }

  @override
  InsertDayMenuUseCaseProvider getProviderOverride(
    covariant InsertDayMenuUseCaseProvider provider,
  ) {
    return call(provider.dayMenu);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'insertDayMenuUseCaseProvider';
}

/// See also [insertDayMenuUseCase].
class InsertDayMenuUseCaseProvider extends AutoDisposeFutureProvider<int> {
  /// See also [insertDayMenuUseCase].
  InsertDayMenuUseCaseProvider(DayMenu dayMenu)
    : this._internal(
        (ref) => insertDayMenuUseCase(ref as InsertDayMenuUseCaseRef, dayMenu),
        from: insertDayMenuUseCaseProvider,
        name: r'insertDayMenuUseCaseProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$insertDayMenuUseCaseHash,
        dependencies: InsertDayMenuUseCaseFamily._dependencies,
        allTransitiveDependencies:
            InsertDayMenuUseCaseFamily._allTransitiveDependencies,
        dayMenu: dayMenu,
      );

  InsertDayMenuUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.dayMenu,
  }) : super.internal();

  final DayMenu dayMenu;

  @override
  Override overrideWith(
    FutureOr<int> Function(InsertDayMenuUseCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: InsertDayMenuUseCaseProvider._internal(
        (ref) => create(ref as InsertDayMenuUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        dayMenu: dayMenu,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<int> createElement() {
    return _InsertDayMenuUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is InsertDayMenuUseCaseProvider && other.dayMenu == dayMenu;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, dayMenu.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin InsertDayMenuUseCaseRef on AutoDisposeFutureProviderRef<int> {
  /// The parameter `dayMenu` of this provider.
  DayMenu get dayMenu;
}

class _InsertDayMenuUseCaseProviderElement
    extends AutoDisposeFutureProviderElement<int>
    with InsertDayMenuUseCaseRef {
  _InsertDayMenuUseCaseProviderElement(super.provider);

  @override
  DayMenu get dayMenu => (origin as InsertDayMenuUseCaseProvider).dayMenu;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
