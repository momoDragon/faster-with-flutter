import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Page2(),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: const [Text('How are you feeling today?'), Text('Happy')],
      ),
    );
  }
}

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  String mood = 'Happy';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Text('How are you feeling today?'),
          Text(mood),
          TextButton(
              onPressed: () {
                setState(() {
                  mood = 'Happy';
                });
              },
              child: const Text('Happy')),
          TextButton(
              onPressed: () {
                setState(() {
                  mood = 'Sad';
                });
              },
              child: const Text('Sad'))
        ],
      ),
    );
  }
}
