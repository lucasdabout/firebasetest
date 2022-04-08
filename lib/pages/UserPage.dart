import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key, required this.title}) : super(key: key);

  static const String routeName = "/UserPage";

  final String title;

  @override
  _UserPageState createState() => _UserPageState();
}

/// // 1. After the page has been created, register it with the app routes
/// routes: <String, WidgetBuilder>{
///   UserPage.routeName: (BuildContext context) => UserPage(title: "UserPage"),
/// },
///
/// // 2. Then this could be used to navigate to the page.
/// Navigator.pushNamed(context, UserPage.routeName);
///

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: _onFloatingActionButtonPressed,
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ),
    );
  }

  void _onFloatingActionButtonPressed() {
  }
}