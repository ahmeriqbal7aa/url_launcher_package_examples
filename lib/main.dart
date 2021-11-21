import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // TODO Function
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print(' Could not launch $command');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("URL Launcher"),
        centerTitle: true,
        backgroundColor: Colors.teal[700],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                // ignore: deprecated_member_use
                FlatButton.icon(
                  onPressed: () => customLaunch('https://google.com'),
                  label: Text('URL'),
                  icon: Icon(Icons.link),
                  color: Colors.amber,
                ),
                // ignore: deprecated_member_use
                FlatButton.icon(
                  onPressed: () => customLaunch('sms:5550101234'),
                  label: Text('SMS'),
                  icon: Icon(Icons.sms),
                  color: Colors.amber,
                ),
                // ignore: deprecated_member_use
                FlatButton.icon(
                  onPressed: () => customLaunch(
                      'mailto:guidancehub7@gmail.com?subject=test%20subject&body=test%20body'),
                  label: Text('Email'),
                  icon: Icon(Icons.email),
                  color: Colors.amber,
                ),
                // ignore: deprecated_member_use
                FlatButton.icon(
                  onPressed: () => customLaunch('tel:+1 555 555 555'),
                  label: Text('Phone'),
                  icon: Icon(Icons.phone),
                  color: Colors.amber,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
