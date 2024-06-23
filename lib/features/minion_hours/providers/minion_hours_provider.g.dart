// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'minion_hours_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$minionHoursMonthHash() => r'be3791ea47a9bd4da15ad47845066048b78fea13';

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

/// See also [minionHoursMonth].
@ProviderFor(minionHoursMonth)
const minionHoursMonthProvider = MinionHoursMonthFamily();

/// See also [minionHoursMonth].
class MinionHoursMonthFamily
    extends Family<AsyncValue<List<MinionHoursOutput>>> {
  /// See also [minionHoursMonth].
  const MinionHoursMonthFamily();

  /// See also [minionHoursMonth].
  MinionHoursMonthProvider call({
    required DateTime dt,
  }) {
    return MinionHoursMonthProvider(
      dt: dt,
    );
  }

  @override
  MinionHoursMonthProvider getProviderOverride(
    covariant MinionHoursMonthProvider provider,
  ) {
    return call(
      dt: provider.dt,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'minionHoursMonthProvider';
}

/// See also [minionHoursMonth].
class MinionHoursMonthProvider
    extends AutoDisposeFutureProvider<List<MinionHoursOutput>> {
  /// See also [minionHoursMonth].
  MinionHoursMonthProvider({
    required DateTime dt,
  }) : this._internal(
          (ref) => minionHoursMonth(
            ref as MinionHoursMonthRef,
            dt: dt,
          ),
          from: minionHoursMonthProvider,
          name: r'minionHoursMonthProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$minionHoursMonthHash,
          dependencies: MinionHoursMonthFamily._dependencies,
          allTransitiveDependencies:
              MinionHoursMonthFamily._allTransitiveDependencies,
          dt: dt,
        );

  MinionHoursMonthProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.dt,
  }) : super.internal();

  final DateTime dt;

  @override
  Override overrideWith(
    FutureOr<List<MinionHoursOutput>> Function(MinionHoursMonthRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MinionHoursMonthProvider._internal(
        (ref) => create(ref as MinionHoursMonthRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        dt: dt,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<MinionHoursOutput>> createElement() {
    return _MinionHoursMonthProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MinionHoursMonthProvider && other.dt == dt;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, dt.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MinionHoursMonthRef
    on AutoDisposeFutureProviderRef<List<MinionHoursOutput>> {
  /// The parameter `dt` of this provider.
  DateTime get dt;
}

class _MinionHoursMonthProviderElement
    extends AutoDisposeFutureProviderElement<List<MinionHoursOutput>>
    with MinionHoursMonthRef {
  _MinionHoursMonthProviderElement(super.provider);

  @override
  DateTime get dt => (origin as MinionHoursMonthProvider).dt;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
