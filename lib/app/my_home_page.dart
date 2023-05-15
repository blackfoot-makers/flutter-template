import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    required this.title,
    super.key,
  });

  final String title;

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
        title: Text(widget.title),
      ),
      body: _MyHomePageContent(
        counter: _counter,
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _MyHomePageContent extends StatelessWidget {
  const _MyHomePageContent({
    required this.counter,
  });

  final int counter;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '$counter',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }
}
