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
            title: 'Flutter チュートリアル',
            theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                brightness: Brightness.light,
            ),
            darkTheme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple, brightness: Brightness.dark),
                brightness: Brightness.dark,
            ),
            themeMode: ThemeMode.system,
            home: const MyHomePage(title: 'Flutter チュートリアル'),
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
    int _bnbSelectedIndex = 0;

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                title: Text(widget.title),
                actions: [
                    IconButton(
                        icon: Icon(Icons.settings),
                        onPressed: () {},
                    ),
                ],
            ),
            body: Container(
                width: double.infinity,
                child: ListView(
                    children: <Widget>[
                        SizedBox(height: 8),
                        ListTile(
                            leading: CircleAvatar(child: Icon(Icons.check)),
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
                            leading: CircleAvatar(child: Icon(Icons.list)),
                            title: Text('リスト'),
                            onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Page2()),
                                );
                            }
                        ),
                    ],
                ),
            ),
            drawer: Drawer(
                child: ListView.separated(
                    padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                    itemCount: 5,
                    itemBuilder: (context, index) => Container(
                        child: ListTile(
                            leading: CircleAvatar(child: Text('$index')),
                            title: Text('リスト $index'),
                            onTap: () {},
                        ),
                    ),
                    separatorBuilder: (context, index) {
                        return Divider();
                    },
                ),
            ),
            bottomNavigationBar: BottomNavigationBar(
                items: const [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        label: 'Home',
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.search),
                        label: 'Search',
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person),
                        label: 'Profile',
                    ),
                ],
                currentIndex: _bnbSelectedIndex,
                onTap: (int index) {
                    setState(() {
                        _bnbSelectedIndex = index;
                    });
                },
            ),
        );
    }
}