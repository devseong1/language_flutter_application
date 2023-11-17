import 'package:flutter/cupertino.dart';
import 'package:google_mlkit_translation/google_mlkit_translation.dart';
import 'package:language_flutter_application/__generated/query.graphql.dart';

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
  final _modelManager = OnDeviceTranslatorModelManager();
  final _onDeviceTranslator = OnDeviceTranslator(
      sourceLanguage: TranslateLanguage.english,
      targetLanguage: TranslateLanguage.korean);

  bool _isDownloadSourceModel = false;
  bool _isDownloadTargetModel = false;

  @override
  void initState() {
    _downloadSourceModel();
    _downloadTargetModel();
    super.initState();
  }

  @override
  void dispose() {
    _onDeviceTranslator.close();
    super.dispose();
  }

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

              if (result.isLoading ||
                  !_isDownloadSourceModel ||
                  !_isDownloadTargetModel) {
                return const Center(
                  child: CupertinoActivityIndicator(),
                );
              }

              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CupertinoListSection.insetGrouped(
                      hasLeading: false,
                      children: [
                        CupertinoListTile.notched(
                          title: FutureBuilder<String>(
                              future: _onDeviceTranslator.translateText(result
                                  .parsedData!
                                  .getSentencesByCategoryId[0]
                                  .sentence),
                              builder: (context, snapshot) {
                                return Text(snapshot.data ??
                                    result.parsedData!
                                        .getSentencesByCategoryId[0].sentence);
                              }),
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
                          title: _wordSection(result.parsedData!
                              .getSentencesByCategoryId[0].sentence),
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

  Future<void> _downloadSourceModel() async {
    _modelManager
        .downloadModel(TranslateLanguage.english.bcpCode)
        .then((value) => value
            ? setState(() {
                _isDownloadSourceModel = true;
              })
            : setState(() {
                _isDownloadSourceModel = false;
              }));
  }

  Future<void> _downloadTargetModel() async {
    _modelManager
        .downloadModel(TranslateLanguage.korean.bcpCode)
        .then((value) => value
            ? setState(() {
                _isDownloadTargetModel = true;
              })
            : setState(() {
                _isDownloadTargetModel = false;
              }));
  }
}
