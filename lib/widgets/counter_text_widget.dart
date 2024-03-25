import 'package:flutter/material.dart';
import 'package:flutter_act14_20220324/models/counter_model.dart';
import 'package:watch_it/watch_it.dart';

class CounterTextWidget extends WatchingWidget {
  const CounterTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final counterValue = watchValue((CounterModel x) => x.counter);
    return Text(
      '$counterValue',
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}