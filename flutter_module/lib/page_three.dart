

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySecondAppScreen extends StatelessWidget {
  const MySecondAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Check u1 ->');
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),

      home: const MySecondaryHomePage(title: 'Flutter Demo New Entrypoint!'),
    );
  }
}

class MySecondaryHomePage extends StatefulWidget {
  const MySecondaryHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MySecondaryHomePage> createState() => _MySecondaryHomePageState();
}

class _MySecondaryHomePageState extends State<MySecondaryHomePage> {
  var fsconnect = FirebaseFirestore.instance;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('Check u2 ->');
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>
          [
            const Text('New layout screen!',),
          ],
        ),
      ),
    );
  }
}