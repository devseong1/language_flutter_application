import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: HomeView(),
      localizationsDelegates: [
        DefaultMaterialLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
      ],
    );
  }
}
