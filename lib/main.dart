import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Connect',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                  color: Colors.green,
                  blurRadius: 1.0,
                ),
              ], borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () async {
                    final Uri params = Uri(
                      scheme: 'mailto',
                      path: 'mayurgawade2612@gmail.com',
                      query:
                          'subject=Mayur &body=Hello.',
                    );

                    var url = params.toString();
                    // ignore: deprecated_member_use
                    if (await canLaunch(url)) {
                      // ignore: deprecated_member_use
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: const Text(
                    'Email',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ),
            Container(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                  color: Colors.green,
                  blurRadius: 1.0,
                ),
              ], borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  // ignore: deprecated_member_use
                  onPressed: () async => await launch(
                      "https://wa.me/+918605824874?text=Hey Its Me"),
                  child: const Text(
                    'Text Me',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ),
            Container(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                  color: Colors.green,
                  blurRadius: 1.0,
                ),
              ], borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  // ignore: deprecated_member_use
                  onPressed: () async =>
                      await launch("https://wa.me/+918605824874?text=Hey"),
                  child: const Text(
                    'WhatsApp',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
