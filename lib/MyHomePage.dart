
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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

  double _currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 80,
                child: Text("ทีเด็ดyessวัว"),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "Register",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text("Name"),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.black, width: 2.0))),
            ),
            const SizedBox(
              height: 16,
              width: 5,
            ),
            const Text(
              "Username",
            ),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.black, width: 2.0))),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "Password",
            ),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.black, width: 2.0))),
            ),
            const Text("Weight"),
            Slider(
              value: _currentSliderValue,
              max: 100,
              divisions: 5,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
            const Text("Height"),
            Slider(
              value: _currentSliderValue,
              max: 100,
              divisions: 5,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}