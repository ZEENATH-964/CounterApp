import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Counter app")),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Counter",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '$_counter',
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Image.asset("assets/download.jpeg"),
            FloatingActionButton(
              onPressed: _incrementCounter,
              child:Icon(
                Icons.add,
                color: Colors.white,
              ),
              backgroundColor: Colors.green,
            ),
            FloatingActionButton(
              onPressed: _decrementCounter,
              child: Icon(
                Icons.remove,
                color: Colors.white,
              ),
              backgroundColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
