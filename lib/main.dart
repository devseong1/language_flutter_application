import 'package:flutter/cupertino.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'src/app.dart';

void main() async {
  await initHiveForFlutter();

  final HttpLink httpLink = HttpLink(
    'http://localhost:3000/graphql',
  );

  final AuthLink authLink = AuthLink(
    getToken: () async => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
    // OR
    // getToken: () => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
  );

  final Link link = authLink.concat(httpLink);

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: link,
      defaultPolicies: DefaultPolicies(
        watchQuery: Policies(
            fetch: FetchPolicy.cacheAndNetwork,
            error: ErrorPolicy.none,
            cacheReread: CacheRereadPolicy.mergeOptimistic),
        watchMutation: Policies(
            fetch: FetchPolicy.cacheAndNetwork,
            error: ErrorPolicy.none,
            cacheReread: CacheRereadPolicy.mergeOptimistic),
      ),
      // The default store is the InMemoryStore, which does NOT persist to disk
      cache: GraphQLCache(store: InMemoryStore()),
    ),
  );

  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();

  runApp(GraphQLProvider(client: client, child: const MyApp()));
}
