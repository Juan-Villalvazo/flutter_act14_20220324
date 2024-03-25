import 'package:flutter/material.dart';
import 'package:flutter_act14_20220324/dependecies.dart';
import 'package:flutter_act14_20220324/models/counter_model.dart';
import 'package:flutter_act14_20220324/widgets/counter_image_widget.dart';
import 'package:flutter_act14_20220324/widgets/counter_text_field_widget.dart';
import 'package:flutter_act14_20220324/widgets/counter_text_widget.dart';
import 'package:watch_it/watch_it.dart';

void main() {
  initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Watch_it',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Watch_it: State Management!"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            CounterTextWidget(),
            CounterTextFieldWidget(),
            CounterImageWidget()
          ],
        ), 
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          di<CounterModel>().counter.value++;
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
