import 'package:flutter/cupertino.dart';

class SampleItemDetailsView extends StatelessWidget {
  const SampleItemDetailsView({super.key});

  static const routeName = '/sample_item';

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Item Details'),
      ),
      child: Container(
        color: CupertinoColors.systemGroupedBackground,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoListSection.insetGrouped(
                hasLeading: false,
                children: const [
                  CupertinoListTile.notched(
                    title: Text('여행은 어땠어?'),
                  ),
                ],
              ),
              CupertinoListSection.insetGrouped(
                hasLeading: false,
                children: const [
                  CupertinoListTile.notched(
                    title: Text('how was your trip?'),
                  ),
                ],
              ),
              CupertinoListSection.insetGrouped(
                hasLeading: false,
                children: [
                  CupertinoListTile.notched(
                    title: wordSection(),
                  ),
                ],
              ),
              CupertinoButton.filled(child: const Text('확인'), onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }

  Widget wordSection() {
    List<String> words = ['how', 'was', 'your', 'trip'];

    return Row(
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
