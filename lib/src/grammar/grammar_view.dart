import 'package:flutter/cupertino.dart';
import 'package:language_flutter_application/__generated/query.graphql.dart';
import 'package:language_flutter_application/src/common/common_error.dart';

import 'grammar_sentence_view.dart';

class GrammarView extends StatefulWidget {
  const GrammarView({super.key});

  @override
  State<GrammarView> createState() => _GrammarViewState();
}

class _GrammarViewState extends State<GrammarView> {
  final String rootCategory = 'english';

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Grammar'),
      ),
      child: Query$getCategoriesByParentId$Widget(
        options: Options$Query$getCategoriesByParentId(
            variables: Variables$Query$getCategoriesByParentId(
                parentId: rootCategory)),
        builder: (result, {fetchMore, refetch}) {
          if (result.hasException) {
            return const CommonError();
          }

          if (result.isLoading) {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          }

          return ListView.builder(
            // Providing a restorationId allows the ListView to restore the
            // scroll position when a user leaves and returns to the app after it
            // has been killed while running in the background.
            restorationId: 'Grammar',
            itemCount: result.parsedData!.getCategoriesByParentId.length,
            itemBuilder: (BuildContext context, int index) {
              return CupertinoListTile(
                  title: Text(
                      result.parsedData!.getCategoriesByParentId[index].name),
                  trailing: const CupertinoListTileChevron(),
                  onTap: () {
                    // Navigate to the details page. If the user leaves and returns to
                    // the app after it has been killed while running in the
                    // background, the navigation stack is restored.
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => GrammarSentenceView(
                              categoryId: result.parsedData!
                                  .getCategoriesByParentId[index].id,
                              categoryName: result.parsedData!
                                  .getCategoriesByParentId[index].name)),
                    );
                  });
            },
          );
        },
      ),
    );
  }
}
