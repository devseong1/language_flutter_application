import 'package:flutter/cupertino.dart';

class GrammarView extends StatelessWidget {
  const GrammarView({super.key});

  static const routeName = '/grammar';

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('GrammarView'),
      ),
      child: Center(
        child: Text('More Information Here'),
      ),
    );
  }
}
