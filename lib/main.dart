// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'WhatsApp',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Color.fromRGBO(7, 94, 85, 1),
      // ),
      home: MyHomePage(title: 'WhatsApp'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: firstAppBar(),
        body: bodyCreator(),
        floatingActionButton: floatingAction());
  }

  Widget secondAppBar() {
    return Container(
        color: const Color.fromRGBO(7, 94, 85, 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Opacity(
                  opacity: 0.5,
                  child: Icon(
                    Icons.photo_camera_rounded,
                    color: Colors.white,
                  ),
                )),
            TextButton(
                onPressed: () {},
                child: const Opacity(
                  opacity: 0.5,
                  child: Text(
                    "CHATS",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "STATUS",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )),
            TextButton(
                onPressed: () {},
                child: const Opacity(
                  opacity: 0.5,
                  child: Text(
                    "CALLS        ",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          ],
        ));
  }

  AppBar firstAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: const Color.fromRGBO(7, 94, 85, 1),
      title: Text(title),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        Container(
          width: 20,
        ),
        IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget bodyCreator() {
    return ListView(
      children: [
        secondAppBar(),
        myStatusCreator(),
        textContainerWithOpacity("Recent updates"),
        statusCreator("Maarij", "2 Minutes ago", "1.jpg"),
        const Divider(),
        statusCreator("Anish", "5 Minutes ago", "2.jpg"),
        const Divider(),
        statusCreator("Mohtashim", "Today, 5:00 AM", "3.jpg"),
        textContainerWithOpacity("Viewed updates"),
        statusCreator("Wasif", "Today, 5:00 PM", "4.jpg"),
        const Divider(),
        statusCreator("Abeer", "Today, 5:55 AM", "5.jpg"),
        const Divider(),
        statusCreator("Taha", "Yesterday, 7:23 PM", "6.jpg"),
        const Divider(),
        statusCreator("Baqar", "Yesterday, 5:00 PM", "7.jpg"),
        const Divider(),
        statusCreator("Cat", "Yesterday, 7:23 PM", "8.jpg"),
        const Divider(),
        statusCreator("Dog", "Yesterday, 5:00 PM", "9.jpg"),
      ],
    );
  }

  Container textContainerWithOpacity(var text) {
    return Container(
      width:
          MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width,
      height: 30,
      color: const Color(0x00000000).withOpacity(0.1),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "     " + text,
            style: const TextStyle(
                color: Colors.black54, fontWeight: FontWeight.bold),
          )),
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
            child: CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(
                color: Colors.white,
                Icons.add,
                size: 17,
              ),
            ),
          ),
        ),
      ),
      title: Text("My status", style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text("Tap to add status update",
          style: TextStyle(fontWeight: FontWeight.bold)),
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

  Widget floatingAction() {
    return Align(
        alignment: Alignment.bottomRight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: 35,
              height: 35,
              child: FloatingActionButton(
                onPressed: () {},
                tooltip: 'Write Something',
                backgroundColor: Colors.white60,
                foregroundColor: Colors.black,
                child: const Icon(Icons.edit, color: Colors.black54),
              ),
            ),
            const SizedBox(
              height: 15,
              width: 30,
            ),
            FloatingActionButton(
              backgroundColor: Colors.green,
              onPressed: () {},
              tooltip: 'Upload',
              child: const Icon(
                Icons.photo_camera_rounded,
              ),
            ),
          ],
        ));
  }
}
