// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'minion_hours_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$minionHoursHash() => r'4c2c362e45b3db3a14eb1d1deb704ac5b8f92785';

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

/// See also [minionHours].
@ProviderFor(minionHours)
const minionHoursProvider = MinionHoursFamily();

/// See also [minionHours].
class MinionHoursFamily extends Family<AsyncValue<List<MinionHoursOutput>>> {
  /// See also [minionHours].
  const MinionHoursFamily();

  /// See also [minionHours].
  MinionHoursProvider call({
    required DateTime start,
    required DateTime end,
  }) {
    return MinionHoursProvider(
      start: start,
      end: end,
    );
  }

  @override
  MinionHoursProvider getProviderOverride(
    covariant MinionHoursProvider provider,
  ) {
    return call(
      start: provider.start,
      end: provider.end,
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
  String? get name => r'minionHoursProvider';
}

/// See also [minionHours].
class MinionHoursProvider
    extends AutoDisposeFutureProvider<List<MinionHoursOutput>> {
  /// See also [minionHours].
  MinionHoursProvider({
    required DateTime start,
    required DateTime end,
  }) : this._internal(
          (ref) => minionHours(
            ref as MinionHoursRef,
            start: start,
            end: end,
          ),
          from: minionHoursProvider,
          name: r'minionHoursProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$minionHoursHash,
          dependencies: MinionHoursFamily._dependencies,
          allTransitiveDependencies:
              MinionHoursFamily._allTransitiveDependencies,
          start: start,
          end: end,
        );

  MinionHoursProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.start,
    required this.end,
  }) : super.internal();

  final DateTime start;
  final DateTime end;

  @override
  Override overrideWith(
    FutureOr<List<MinionHoursOutput>> Function(MinionHoursRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MinionHoursProvider._internal(
        (ref) => create(ref as MinionHoursRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        start: start,
        end: end,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<MinionHoursOutput>> createElement() {
    return _MinionHoursProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MinionHoursProvider &&
        other.start == start &&
        other.end == end;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, start.hashCode);
    hash = _SystemHash.combine(hash, end.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MinionHoursRef on AutoDisposeFutureProviderRef<List<MinionHoursOutput>> {
  /// The parameter `start` of this provider.
  DateTime get start;

  /// The parameter `end` of this provider.
  DateTime get end;
}

class _MinionHoursProviderElement
    extends AutoDisposeFutureProviderElement<List<MinionHoursOutput>>
    with MinionHoursRef {
  _MinionHoursProviderElement(super.provider);

  @override
  DateTime get start => (origin as MinionHoursProvider).start;
  @override
  DateTime get end => (origin as MinionHoursProvider).end;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
