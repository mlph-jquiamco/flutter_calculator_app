import 'package:flutter/material.dart';
import 'package:flutter_convert_to_hook_widget/apps/home/home_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Initialize app
void main() => runApp(ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
      initialRoute: "/",
    );
  }
}
