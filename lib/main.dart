import 'package:flutter/material.dart';

import 'page_1.dart';
import 'page_2.dart';

void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                brightness: Brightness.light,
            ),
            darkTheme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple, brightness: Brightness.dark),
                brightness: Brightness.dark,
            ),
            themeMode: ThemeMode.system,
            home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                title: Text(widget.title),
            ),
            body: Container(
                width: double.infinity,
                child: ListView(
                    children: <Widget>[
                        SizedBox(height: 8),
                        ListTile(
                            leading: CircleAvatar(child: Text('1')),
                            title: Text('最初の画面'),
                            onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Page1()),
                                );
                            }
                        ),
                        Divider(),
                        ListTile(
                            leading: CircleAvatar(child: Text('2')),
                            title: Text('リスト'),
                            onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Page2()),
                                );
                            }
                        ),
                        Divider(),
                    ],
                ),
            ),
        );
    }
}