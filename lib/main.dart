import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'abcd.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  final GoogleSignIn googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      // 'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
  final GoogleSignIn _googleSignIn=GoogleSignIn();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: (){
                _googleSignIn.signIn().then((value){

                  String userName=value!.displayName!;
                  String email=value!.email!;
                  String photo=value!.photoUrl!;
                  String userId=value!.id!;

                  print("Name= "+userName);

                  Navigator.push(context,MaterialPageRoute(builder: (context)=>ChattingPageScreen4(
                    userName: userName,
                    email: email,
                    photo: photo,
                    userId: userId,
                  )));
                });

              },
              color: Colors.green,
              padding: EdgeInsets.only(left: 25,right: 25,top: 10,bottom: 10),
              child: Text(
                "Google Sign in ",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.w500
                ),


              ),

            ),
            SizedBox(height: 20,),
            MaterialButton(
              onPressed: (){
                _googleSignIn.signIn().then((value){

                  String userName=value!.displayName!;
                  String email=value!.email!;
                  String photo=value!.photoUrl!;
                  String userId=value!.id!;

                  print("Name= "+userName);

                  Navigator.push(context,MaterialPageRoute(builder: (context)=>ChattingPageScreen4(
                    userName: userName,
                    email: email,
                    photo: photo,
                    userId: userId,
                  )));
                });

              },
              color: Colors.green,
              padding: EdgeInsets.only(left: 25,right: 25,top: 10,bottom: 10),
              child: Text(
                "Facebook Sign in",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.w500
                ),


              ),

            ),
          ],
        )


      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
// VzSiQcXRmi2kyjzcA+mYLEtbGVs=