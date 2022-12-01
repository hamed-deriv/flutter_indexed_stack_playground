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
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(elevation: 0, title: Text(widget.title)),
        body: Center(
          child: IndexedStack(
            index: currentPageIndex,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const ListTile(
                    tileColor: Colors.red,
                    title: Center(
                      child: Text('PAGE: 01'),
                    ),
                  ),
                  TextButton(
                    child: const Text('BUTTON'),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                    ),
                    onPressed: () {},
                  )
                ],
              ),
              const Center(child: Text('PAGE: 02')),
              const Center(child: Text('PAGE: 03')),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.book),
          onPressed: () =>
              setState(() => currentPageIndex = (currentPageIndex + 1) % 2),
        ),
      );
}
