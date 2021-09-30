import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaywallScaffold extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final Widget child;
  final String? appBarTitle;
  final ThemeData? theme;

  PaywallScaffold({required this.child, this.appBarTitle, this.theme = null});

  @override
  Widget build(BuildContext context) {
    ThemeData _theme = theme != null ? theme! : Theme.of(context);
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: _theme.appBarTheme.backgroundColor,
        appBar: AppBar(
          textTheme: _theme.textTheme,
          actionsIconTheme: _theme.accentIconTheme,
          brightness: _theme.brightness,
          iconTheme: _theme.iconTheme,
          backgroundColor: _theme.backgroundColor,
          title: Text(appBarTitle ?? "Premium"),
          elevation: 0.0,
          actions: [],
        ),
        body: child);
  }
}