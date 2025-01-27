import 'package:flutter/material.dart';
import 'package:flutter_act14_20220324/models/counter_model.dart';
import 'package:watch_it/watch_it.dart';

class CounterTextFieldWidget extends WatchingWidget {
  const CounterTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = watchValue((CounterModel x) => x.controller);
    registerHandler(
      select: (CounterModel x) => x.counter,
      handler: (context, Value, cancel) {
        di<CounterModel>().controller.value.text = 
          di<CounterModel>().counter.value.toString();
      }
    );
    return TextField(
        controller: controller,
      onChanged: (value) => 
        di<CounterModel>().counter.value = int.tryParse(value) ?? 0,
    );
  }
}