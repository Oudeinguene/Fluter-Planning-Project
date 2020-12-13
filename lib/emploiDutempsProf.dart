import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'calendar.dart';
import 'db.dart';
import 'theme.dart';
import 'package:provider/provider.dart';

class emploiDutempsProf extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
          builder: (context, ThemeNotifier notifier, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: notifier.isDarkTheme ? dark : light,
              home: Calendar(),
            );
          }),
    );
  }
}