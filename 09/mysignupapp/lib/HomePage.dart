import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String name, email, mobile, collegename;

  HomePage({
    Key key,
    @required this.name,
    this.email,
    this.mobile,
    this.collegename,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          title: Text('Students Info'),
        ),
        body: Form(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(15.0),
                ),
                Image(
                  image: AssetImage('images/logo.png'),
                  height: 100.0,
                  width: 100.0,
                ),
                ListTile(
                  leading: Icon(Icons.people),
                  title: Text(name),
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text(email),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text(mobile),
                ),
                ListTile(
                  leading: Icon(Icons.work),
                  title: Text(collegename),
                ),
              ],
            ),
          ),
        ));
  }
}
