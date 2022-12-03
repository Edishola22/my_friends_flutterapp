import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
// This widget is the root
// of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "my_friends_flutter_app",
        theme: ThemeData(primarySwatch: Colors.pink),
        debugShowCheckedModeBanner: false,
        // home : new ListViewBuilder(), NO Need To Use Unnecessary New Keyword
        home: const ListViewBuilder());
  }
}

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("my_friends_flutter_app")),
      body: ListView.builder(
          itemCount: 12,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: const Icon(Icons.image),
                trailing: const Text(
                  "edidiongmikeu@gmail.com",
                  style: TextStyle(color: Colors.pinkAccent, fontSize: 17),
                ),
                title: Text("Friend $index"));
          }),
    );
  }
}
