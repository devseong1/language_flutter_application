import 'package:flutter/cupertino.dart';

import '../grammar_feature/grammar_view.dart';
import '../sample_feature/sample_item_list_view.dart';
import '../vocabulary_feature/vocabulary_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.house_fill),
          ),
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
              builder: (context) => const SampleItemListView(),
            ),
          1 => CupertinoTabView(
              builder: (context) => const VocabularyView(),
            ),
          2 => CupertinoTabView(
              builder: (context) => const GrammarView(),
            ),
          _ => throw Exception('Invalid index $index'),
        };
      },
    );
  }
}
