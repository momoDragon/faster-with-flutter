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
        primarySwatch: Colors.blue,
      ),
      home: const GridviewPage(),
    );
  }
}

class GridviewPage extends StatelessWidget {
  const GridviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 5, crossAxisSpacing: 5, crossAxisCount: 3),
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.red,
              child: Center(child: Text('$index')),
            );
          }),
    );
  }
}

class ListPage2 extends StatelessWidget {
  const ListPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.only(bottom: 10),
                width: 100,
                height: 100,
                color: Colors.red,
                child: Center(child: Text('$index')),
              ),
            );
          }),
    );
  }
}

class ListPage1 extends StatelessWidget {
  const ListPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          const SizedBox(height: 10),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          const SizedBox(height: 10),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          const SizedBox(height: 10),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          const SizedBox(height: 10),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          const SizedBox(height: 10),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          const SizedBox(height: 10),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

class ColumnPage extends StatefulWidget {
  const ColumnPage({super.key});

  @override
  State<ColumnPage> createState() => _ColumnPageState();
}

class _ColumnPageState extends State<ColumnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.black,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // vertical
          crossAxisAlignment: CrossAxisAlignment.center, // horizontal
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}

class RowPage extends StatefulWidget {
  const RowPage({super.key});

  @override
  State<RowPage> createState() => _RowPageState();
}

class _RowPageState extends State<RowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.black,
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // horizontal
          crossAxisAlignment: CrossAxisAlignment.center, // veritical
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
