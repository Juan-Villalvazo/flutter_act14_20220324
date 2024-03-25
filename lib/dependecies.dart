import 'package:flutter_act14_20220324/models/counter_model.dart';
import 'package:watch_it/watch_it.dart';

void initializeDependencies() {
  di.registerSingleton<CounterModel>(CounterModel());
}