// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_day_menu_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getDayMenuUSeCaseHash() => r'adb21ca3b458449cbff5b5cb21e02375d76ba86a';

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

/// See also [getDayMenuUSeCase].
@ProviderFor(getDayMenuUSeCase)
const getDayMenuUSeCaseProvider = GetDayMenuUSeCaseFamily();

/// See also [getDayMenuUSeCase].
class GetDayMenuUSeCaseFamily extends Family<AsyncValue<List<DayMenu>>> {
  /// See also [getDayMenuUSeCase].
  const GetDayMenuUSeCaseFamily();

  /// See also [getDayMenuUSeCase].
  GetDayMenuUSeCaseProvider call(String date) {
    return GetDayMenuUSeCaseProvider(date);
  }

  @override
  GetDayMenuUSeCaseProvider getProviderOverride(
    covariant GetDayMenuUSeCaseProvider provider,
  ) {
    return call(provider.date);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getDayMenuUSeCaseProvider';
}

/// See also [getDayMenuUSeCase].
class GetDayMenuUSeCaseProvider
    extends AutoDisposeFutureProvider<List<DayMenu>> {
  /// See also [getDayMenuUSeCase].
  GetDayMenuUSeCaseProvider(String date)
    : this._internal(
        (ref) => getDayMenuUSeCase(ref as GetDayMenuUSeCaseRef, date),
        from: getDayMenuUSeCaseProvider,
        name: r'getDayMenuUSeCaseProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$getDayMenuUSeCaseHash,
        dependencies: GetDayMenuUSeCaseFamily._dependencies,
        allTransitiveDependencies:
            GetDayMenuUSeCaseFamily._allTransitiveDependencies,
        date: date,
      );

  GetDayMenuUSeCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.date,
  }) : super.internal();

  final String date;

  @override
  Override overrideWith(
    FutureOr<List<DayMenu>> Function(GetDayMenuUSeCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetDayMenuUSeCaseProvider._internal(
        (ref) => create(ref as GetDayMenuUSeCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        date: date,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<DayMenu>> createElement() {
    return _GetDayMenuUSeCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetDayMenuUSeCaseProvider && other.date == date;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, date.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetDayMenuUSeCaseRef on AutoDisposeFutureProviderRef<List<DayMenu>> {
  /// The parameter `date` of this provider.
  String get date;
}

class _GetDayMenuUSeCaseProviderElement
    extends AutoDisposeFutureProviderElement<List<DayMenu>>
    with GetDayMenuUSeCaseRef {
  _GetDayMenuUSeCaseProviderElement(super.provider);

  @override
  String get date => (origin as GetDayMenuUSeCaseProvider).date;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
