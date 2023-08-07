import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState(); // initializtion
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context as BuildContext,
          MaterialPageRoute(
              builder: (context) => MyHomePage(
                    title: 'Myapp',
                  )));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).colorScheme.inversePrimary,
        child: Center(
            child: Text('Pradakshina App',
                style: GoogleFonts.abrilFatface(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ))),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 27, 158, 145),
        title: Text('Pradakshina App', style: GoogleFonts.abrilFatface()),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/imag.jpg'), fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("You Have completed \n   $_counter  pradakshina",
                  style: GoogleFonts.abrilFatface(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 0, 5, 8),
                  )),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
        focusColor: Color.fromARGB(255, 27, 158, 145),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
