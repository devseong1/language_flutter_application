import 'package:flutter/cupertino.dart';

import '../grammar/grammar_view.dart';
import '../vocabulary/vocabulary_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.book_fill),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_fill),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        return switch (index) {
          0 => CupertinoTabView(
              builder: (context) => const GrammarView(),
            ),
          1 => CupertinoTabView(
              builder: (context) => const VocabularyView(),
            ),
          _ => throw Exception('Invalid index $index'),
        };
      },
    );
  }
}
