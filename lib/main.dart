import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Weather App',
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _Counter = 0;

  void _reset() {
    setState(() {
      _Counter = 0;
    });
  }

  void _increment() {
    setState(() {
      _Counter++;
    });
  }

  void _decrement() {
    if (_Counter >= 1) {
      setState(() {
        _Counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_Counter',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: _decrement,
                    child: const Text('Decrement'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: _increment,
                    child: const Text('Increment'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _reset,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
