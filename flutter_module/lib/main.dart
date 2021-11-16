import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttermodule/page_three.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'page_one.dart';
import 'page_two.dart';

@pragma('vm:entry-point')
void secondary() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MySecondAppScreen());
}



Future<void> main() async{
  print('Check Flutter Call 1 ');
  // var route = ModalRoute.of(context);
  // if(route!=null){
  //   print(route.settings.name);
  //
  // if( isMainCall ){
  //   print('Check Flutter Call 2');
  //   await Firebase.initializeApp();
  //   isMainCall = false;
  //   print('Check Flutter Call 22 ${isMainCall}');
  // }
  print('Check Flutter Call 3 ');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    print('Check b1 ->');
    return MaterialApp(
      title: 'Named Routes Demo',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      home: PageOne(),
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/': (context) =>  PageOne(),
        '/route_calling': (context) =>  MySecondAppScreen(),
      },
    );
    return GetMaterialApp(
      key: _formKey,
      debugShowCheckedModeBanner: false,
      // initialRoute: '/',
      //home: CheckFile2(),
      getPages: Routes.routes,
    );
  }
}

// class MyAppState extends StatefulWidget {
//
//   @override
//   State createState() => MyAppStatefull();
// }
// class MyAppStatefull extends State<MyAppState> {
//   @override
//   void initState() {
//
//     super.initState();
//     print('Check m2 ->');
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     print('Check m3 ->');
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       initialRoute: '/',
//       getPages: Routes.routes,
//     );
//   }
// }

class Routes{

  static final routes = [
    GetPage(name: '/route_calling', page: () => PageOne()),
    GetPage(name: '/', page: () => PageTwo()),

  ];
}
