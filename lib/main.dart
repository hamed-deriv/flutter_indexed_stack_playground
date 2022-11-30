import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Indexed Stack Playground',
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        home: const HomePage(title: 'Indexed Stack Playground'),
      );
}

class HomePage extends StatefulWidget {
  const HomePage({required this.title, Key? key}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(elevation: 0, title: Text(widget.title)),
        body: const Center(
          child: Text('NO CONTENT YET!'),
        ),
      );
}
