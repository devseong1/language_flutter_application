import 'package:flutter/cupertino.dart';
import 'package:language_flutter_application/__generated/query.graphql.dart';
import 'package:language_flutter_application/src/common/common_empty.dart';

import '../common/common_error.dart';

class GrammarSentenceView extends StatefulWidget {
  const GrammarSentenceView(
      {super.key, required this.categoryId, required this.categoryName});

  final String categoryId;
  final String categoryName;

  @override
  State<GrammarSentenceView> createState() => _GrammarSentenceViewState();
}

class _GrammarSentenceViewState extends State<GrammarSentenceView> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.categoryName),
      ),
      child: Container(
        color: CupertinoColors.systemGroupedBackground,
        child: Query$getSentencesByCategoryId$Widget(
            options: Options$Query$getSentencesByCategoryId(
                variables: Variables$Query$getSentencesByCategoryId(
                    categoryId: widget.categoryId)),
            builder: (result, {fetchMore, refetch}) {
              if (result.hasException) {
                return const CommonError();
              }

              if (result.isLoading) {
                return const Center(
                  child: CupertinoActivityIndicator(),
                );
              }

              List<Query$getSentencesByCategoryId$getSentencesByCategoryId>?
                  data = result.parsedData?.getSentencesByCategoryId;

              if (data == null || data.isEmpty) {
                return const CommonEmpty();
              }

              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CupertinoListSection.insetGrouped(
                      hasLeading: false,
                      children: const [
                        CupertinoListTile.notched(
                          title: Text(''),
                        ),
                      ],
                    ),
                    CupertinoListSection.insetGrouped(
                      hasLeading: false,
                      children: const [
                        CupertinoListTile.notched(
                          title: Text(''),
                        ),
                      ],
                    ),
                    CupertinoListSection.insetGrouped(
                      hasLeading: false,
                      children: [
                        CupertinoListTile.notched(
                          title: _wordSection(data[0].sentence),
                        ),
                      ],
                    ),
                    CupertinoButton.filled(
                        child: const Text('확인'), onPressed: () {})
                  ],
                ),
              );
            }),
      ),
    );
  }

  Widget _wordSection(String sentence) {
    List<String> words = sentence.split(" ");

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (String word in words)
          GestureDetector(
              onTap: () => {},
              child: Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: CupertinoColors.systemGroupedBackground,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(word),
              )),
      ],
    );
  }
}
