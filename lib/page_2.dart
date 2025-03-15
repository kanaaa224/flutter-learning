import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
    @override
    State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                title: Text('リスト'),
            ),
            body: ListView.separated(
                padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                itemCount: 10,
                itemBuilder: (context, index) => Container(
                    child: ListTile(
                        leading: CircleAvatar(child: Text('$index')),
                        title: Text('リスト $index'),
                    ),
                ),
                separatorBuilder: (context, index) {
                    return Divider();
                },
            ),
        );
    }
}