import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:language_flutter_application/__generated/query.graphql.dart';
import 'package:language_flutter_application/src/common/common_empty.dart';
import 'package:language_flutter_application/src/widget/base_ad.dart';
import 'package:reorderables/reorderables.dart';

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
  final List<Widget> _tiles = [];
  final List<String> _tilesText = [];
  int _dataIndex = 0;
  bool _isShuffle = true;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.categoryName),
      ),
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

            if (_tiles.isEmpty) {
              if (_dataIndex == data.length) {
                _dataIndex = 0;
              }
              _tiles.addAll(_words(data[_dataIndex].sentence, _isShuffle));
            }

            return ListView(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: BaseAd(
                    adSize: AdSize.largeBanner,
                  ),
                ),
                const Divider(
                  color: CupertinoColors.systemGroupedBackground,
                  height: 50,
                  thickness: 5,
                ),
                ReorderableWrap(
                    children: _tiles,
                    onReorder: (oldIndex, newIndex) {
                      setState(() {
                        Widget row = _tiles.removeAt(oldIndex);
                        String rowText = _tilesText.removeAt(oldIndex);
                        _tiles.insert(newIndex, row);
                        _tilesText.insert(newIndex, rowText);
                      });
                    }),
                const Divider(
                  color: CupertinoColors.systemGroupedBackground,
                  height: 50,
                  thickness: 5,
                ),
                Row(
                  children: _tiles,
                ),
                const Divider(
                  color: CupertinoColors.systemGroupedBackground,
                  height: 50,
                  thickness: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CupertinoButton.filled(
                      onPressed: () {
                        _confirm(data);
                      },
                      child: const Text('confirm'),
                    ),
                    CupertinoButton.filled(
                      onPressed: _viewCollect,
                      child: const Text('view collect'),
                    ),
                  ],
                ),
              ],
            );
          }),
    );
  }

  List<Widget> _words(String sentence, bool isShuffle) {
    List<String> words = sentence.split(" ");
    if (isShuffle) {
      words.shuffle();
    }
    _tilesText.addAll(words);

    return [
      for (String word in words)
        Container(
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: CupertinoColors.systemGroupedBackground,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(word),
        ),
    ];
  }

  void _confirm(
      List<Query$getSentencesByCategoryId$getSentencesByCategoryId> data) {
    String answer = _tilesText.join(" ").trim();
    String correctAnswer = data[_dataIndex].sentence.trim();

    if (answer == correctAnswer) {
      setState(() {
        _clear(true);
        _dataIndex++;
      });
    }
  }

  void _viewCollect() {
    setState(() {
      _clear(false);
    });
  }

  void _clear(bool isShuffle) {
    _tiles.clear();
    _tilesText.clear();
    _isShuffle = isShuffle;
  }
}
