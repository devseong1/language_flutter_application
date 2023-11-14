import 'package:flutter/cupertino.dart';

import 'home/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      // Providing a restorationScopeId allows the Navigator built by the
      // MaterialApp to restore the navigation stack when a user leaves and
      // returns to the app after it has been killed while running in the
      // background.
      restorationScopeId: 'app',

      theme: CupertinoThemeData(brightness: Brightness.light),

      home: HomeView(),
    );
  }
}
