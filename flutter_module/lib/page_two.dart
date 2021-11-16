
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}):super(key:key);

  @override
  State createState() => PageTwofull();
}
class PageTwofull extends State<PageTwo> {

  var ref;
  @override
  void initState() {
    super.initState();
    print('Check y2 ->');
    sycn();
  }

  void sycn() async{
    print('Check y3 ->');
    await Firebase.initializeApp();
    print('Check y5 ->');
    var fsconnect = FirebaseFirestore.instance;
    print('Check y6 ->');
  }
  @override
  Widget build(BuildContext context) {
    print('Check y4 ->');
    return Container(
      child: Text('Checking 3 '),
    );
  }
}