import 'package:flutter/cupertino.dart';

class VocabularyView extends StatelessWidget {
  const VocabularyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('VocabularyView'),
      ),
      child: Center(
        child: Text('More Information Here'),
      ),
    );
  }
}
