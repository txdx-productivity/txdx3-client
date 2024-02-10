import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pocketbase/pocketbase.dart';

import 'mutation.dart';
import 'txdx_state.dart';

class StateManager extends Notifier<TxDxState> {

  @override
  TxDxState build() => TxDxState();

  final PocketBase pocketBase;

  final List<Mutation> _allMutations = [];
  final _mutationsStream = StreamController<List<Mutation>>();

  StateManager({required this.pocketBase}) { _init(); }

  void _init() async {
    _fetchHistoricalMutations();
    _setupMutationProcessor();
    _listenForRealtimeMutations();
  }

  void _fetchHistoricalMutations() async {
    final mutations = <Mutation>[];
    final records = await pocketBase.collection("mutations").getFullList();
    mutations.addAll(records.map((record) => Mutation.fromRecord(record)));
    _allMutations.addAll(mutations);
    _mutationsStream.add(_allMutations);
  }

  void _listenForRealtimeMutations() {
    pocketBase.collection("mutations").subscribe("*", (event) {
      final mutation = Mutation.fromRecord(event.record!);
      _allMutations.add(mutation);
      _mutationsStream.add([mutation]);
    });
  }

  void _setupMutationProcessor() {
    _mutationsStream.stream.listen((mutations) {
      state.applyMutations(mutations);
    });
  }
}
