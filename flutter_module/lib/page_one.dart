
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {

  const PageOne({Key? key}):super(key:key);

  @override
  State createState() => PageOnefull();
}
class PageOnefull extends State<PageOne> {

  var ref;
  @override
  void initState() {

    super.initState();
    callingFir();
    print('Check z2 ->');
  }
  callingFir()async{
    print('Check z1 ->');
    await Firebase.initializeApp();
    ref = await FirebaseFirestore.instance;
    print('Check z0 ->');
  }

  @override
  Widget build(BuildContext context) {
    print('Check z3 ->');
    return MaterialApp(
      home: Container(
        child: Text('Find Route'),
      ),
    );
  }
}