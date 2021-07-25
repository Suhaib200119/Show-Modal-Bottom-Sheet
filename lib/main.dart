import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextStyle ts = TextStyle(
      fontSize: 24,
      color: Colors.green,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic);
  void getData() {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Text("Show Modal Bottom Sheet",style: ts,),
                SizedBox(height: 100,),
                Text("Show Modal Bottom Sheet",style: ts,),
                SizedBox(height: 100,),
                Text("Show Modal Bottom Sheet",style: ts,),
                SizedBox(height: 100,),
                Text("Show Modal Bottom Sheet",style: ts,),
                SizedBox(height: 100,),
                Text("Show Modal Bottom Sheet",style: ts,),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Show Bottom Sheet"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            setState(() {
              getData();
            });
          },
          child: Text("Show Data"),
        ),
      ),
    );
  }
}
