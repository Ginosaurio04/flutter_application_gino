import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contador',
      home: const Contador(title: 'Contador'),
    );
  }
}

class Contador extends StatefulWidget {
  const Contador({super.key, required this.title});

  final String title;

  @override
  State<Contador> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Contador> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resentCounter() {
    setState(() {
      _counter = 0;
    });
  }

  void _multiplyCounter() {
    setState(() {
      _counter *= 2;
    });
  }

  void _divideCounter() {
    setState(() {
      _counter ~/= 2;
    });
  }

  void _decrementCounter() {
    if (_counter > 0) {
      setState(() {
        _counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            key: const Key('increment_fab'),
            onPressed: _incrementCounter,
            tooltip: 'Sumar',
            child: const Icon(Icons.add),
          ),

          FloatingActionButton(
            key: const Key('decrement_fab'),
            onPressed: _decrementCounter,
            tooltip: 'Restar',
            child: const Icon(Icons.remove),
          ),

          FloatingActionButton(
            key: const Key('reset_fab'),
            onPressed: _resentCounter,
            tooltip: 'Resetear',
            child: const Icon(Icons.refresh),
          ),

          FloatingActionButton(
            key: const Key('multiply_fab'),
            onPressed: _multiplyCounter,
            tooltip: 'Multiplicar',
            child: const Icon(Icons.clear),
          ),

          FloatingActionButton(
            key: const Key('divide_fab'),
            onPressed: _divideCounter,
            tooltip: 'Dividir',
            child: const Icon(Icons.horizontal_rule),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
