// ignore_for_file: prefer_interpolation_to_compose_strings

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
    return ListView(
      children: [
        secondAppBar(),
        myStatusCreator(),
        textContainerWithOpacity("Recent Updates"),
        statusCreator("Maarij", "2 Minutes ago", "1.jpg"),
        statusCreator("Anish", "5 Minutes ago", "2.jpg"),
        statusCreator("Mohtashim", "Today, 5:00 AM", "3.jpg"),
        textContainerWithOpacity("Viewed Updates"),
        statusCreator("Wasif", "Today, 5:00 PM", "4.jpg"),
        statusCreator("Abeer", "Today, 5:55 AM", "5.jpg"),
        statusCreator("Taha", "Yesterday, 7:23 PM", "6.jpg"),
        statusCreator("Baqar", "Yesterday, 5:00 PM", "7.jpg"),
      ],
    );
  }

  Container textContainerWithOpacity(var text) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 30,
      color: const Color(0x00000000).withOpacity(0.2),
      child:
          Align(alignment: Alignment.centerLeft, child: Text("     " + text)),
    );
  }

  ListTile myStatusCreator() {
    return const ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage("assets/flutter.jpg"),
        child: Align(
          alignment: Alignment.bottomRight,
          child: CircleAvatar(
            radius: 9,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.add,
              size: 17,
            ),
          ),
        ),
      ),
      title: Text("MY STATUS"),
      subtitle: Text("Tap to add status update"),
    );
  }

  ListTile statusCreator(var name, var time, var imagename) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage("assets/" + imagename),
      ),
      title: Text(name),
      subtitle: Text(time),
    );
  }

  Widget secondAppBar() {
    return Container(
        color: Colors.green,
        child: Wrap(
          spacing: 1,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.photo_camera,
                  color: Colors.white,
                )),
            const SizedBox(
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
            const SizedBox(
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
