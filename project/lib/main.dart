import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String url =
      'https://media.istockphoto.com/id/1302442639/photo/view-from-dune-top-over-north-sea.jpg?b=1&s=170667a&w=0&k=20&c=c8vnLNTjoBZo-tKCy-N3KgfhD45CuNeITKAC0xB_zys=';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test App"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Image(
          height: 400,
          image: NetworkImage(
            url,
          ),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
