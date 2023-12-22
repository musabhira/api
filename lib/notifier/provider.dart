import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class My extends StateNotifier<int> {
  My() : super(3);
  void increment() {
    state++;
  }

  void decriment() {
    state--;
  }
}

final Counterp = StateNotifierProvider<My, int>((ref) => My());
final ggg = StateProvider(
  (ref) => 'hello',
);
