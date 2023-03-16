import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'WhatsApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: firstAppBar(),
        body: bodyCreator(),
        floatingActionButton: floatingAction());
  }

  Widget bodyCreator() {
    return Column(
      children: [secondAppBar()],
    );
  }

  Widget secondAppBar() {
    return Container(
        color: Colors.green,
        child: Wrap(
          spacing: 1,
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.photo_camera)),
            Container(
              width: 20,
              height: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "CHATS",
                      style: TextStyle(color: Colors.white),
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "STATUS",
                      style: TextStyle(color: Colors.white),
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "CALLS",
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            )
          ],
        ));
  }

  AppBar firstAppBar() {
    return AppBar(
      title: Text(widget.title),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        Container(
          width: 20,
        ),
        IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget floatingAction() {
    return Align(
        alignment: Alignment.bottomRight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {},
              tooltip: 'Write Something',
              child: const Icon(Icons.window_rounded),
            ),
            Container(
              height: 15,
              width: 30,
            ),
            FloatingActionButton(
              onPressed: () {},
              tooltip: 'Upload',
              child: const Icon(Icons.photo_camera),
            ),
          ],
        ));
  }
}
