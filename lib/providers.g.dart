// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sharedPreferencesHash() => r'aa7ace48f3c0dce382957e3c6eac2449573583a9';

/// See also [sharedPreferences].
@ProviderFor(sharedPreferences)
final sharedPreferencesProvider =
    AutoDisposeFutureProvider<SharedPreferences>.internal(
  sharedPreferences,
  name: r'sharedPreferencesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$sharedPreferencesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SharedPreferencesRef = AutoDisposeFutureProviderRef<SharedPreferences>;
String _$pocketBaseHash() => r'654f183dfc6a2896482b1274410106a8732948f5';

/// See also [pocketBase].
@ProviderFor(pocketBase)
final pocketBaseProvider = AutoDisposeProvider<PocketBase>.internal(
  pocketBase,
  name: r'pocketBaseProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$pocketBaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PocketBaseRef = AutoDisposeProviderRef<PocketBase>;
String _$authStoreHash() => r'3a88549305688d5fdb782245f78d74667e79bc38';

/// See also [authStore].
@ProviderFor(authStore)
final authStoreProvider = AutoDisposeProvider<AuthStore?>.internal(
  authStore,
  name: r'authStoreProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$authStoreHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AuthStoreRef = AutoDisposeProviderRef<AuthStore?>;
String _$commandsListHash() => r'3bffe88b9ea21dad2f5dc9d6afb12759b113d7dc';

/// See also [commandsList].
@ProviderFor(commandsList)
final commandsListProvider = AutoDisposeFutureProvider<List<Command>>.internal(
  commandsList,
  name: r'commandsListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$commandsListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CommandsListRef = AutoDisposeFutureProviderRef<List<Command>>;
String _$asyncItemsHash() => r'd6af61bfb0987f58c8696604ed649ec5754019ba';

/// See also [AsyncItems].
@ProviderFor(AsyncItems)
final asyncItemsProvider =
    AutoDisposeAsyncNotifierProvider<AsyncItems, List<Item>>.internal(
  AsyncItems.new,
  name: r'asyncItemsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$asyncItemsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AsyncItems = AutoDisposeAsyncNotifier<List<Item>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
