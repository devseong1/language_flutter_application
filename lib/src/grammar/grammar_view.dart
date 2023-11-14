import 'package:flutter/cupertino.dart';
import 'package:language_flutter_application/__generated/query.graphql.dart';
import 'package:language_flutter_application/src/common/common_error.dart';

class GrammarView extends StatelessWidget {
  const GrammarView({super.key});

  static const routeName = '/grammar';

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          const CupertinoSliverNavigationBar(
            largeTitle: Text('Grammar'),
          ),
          Query$getCategoriesByParentId$Widget(
            options: Options$Query$getCategoriesByParentId(
                variables: Variables$Query$getCategoriesByParentId(
                    parentId: 'english')),
            builder: (result, {fetchMore, refetch}) {
              if (result.hasException) {
                return const CommonError();
              }

              if (result.isLoading) {
                return const Center(
                  child: CupertinoActivityIndicator(),
                );
              }

              return SliverSafeArea(
                top: false,
                minimum: const EdgeInsets.only(top: 0),
                sliver: SliverToBoxAdapter(
                  child: CupertinoListSection.insetGrouped(
                    topMargin: 0,
                    hasLeading: false,
                    children: [
                      ...List.generate(
                          result.parsedData!.getCategoriesByParentId.length,
                          (index) => SafeArea(
                                top: false,
                                bottom: false,
                                child: CupertinoListTile.notched(
                                  title: Text(result.parsedData!
                                      .getCategoriesByParentId[index].name),
                                  trailing: const CupertinoListTileChevron(),
                                ),
                              ))
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
