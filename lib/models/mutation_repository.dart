import 'dart:async';

import 'package:pocketbase/pocketbase.dart';

import 'mutation.dart';

class MutationRepository {

  final List<Mutation> _allMutations = [];
  final mutationsStream = StreamController<List<Mutation>>();

  final PocketBase pocketBase;

  MutationRepository({required this.pocketBase}) { _init(); }

  void _init() async {
    _fetchHistoricalMutations();
    _listenForRealtimeMutations();
  }

  void _fetchHistoricalMutations() async {
    final mutations = <Mutation>[];
    final records = await pocketBase.collection("mutations").getFullList();
    mutations.addAll(records.map((record) => Mutation.fromRecord(record)));
    _allMutations.addAll(mutations);
    mutationsStream.add(_allMutations);
  }

  void _listenForRealtimeMutations() {
    pocketBase.collection("mutations").subscribe("*", (event) {
      final mutation = Mutation.fromRecord(event.record!);
      _allMutations.add(mutation);
      mutationsStream.add([mutation]);
    });
  }
}