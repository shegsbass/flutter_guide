import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/home_page.dart';
import 'package:flutter_learn/widget_tree.dart';

import 'core/notifiers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDark, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          brightness: isDark ? Brightness.dark : Brightness.light,
          primarySwatch: Colors.blue,
          useMaterial3: true,
        ),
        home: const WidgetTree(),
      );
    },);
  }
}