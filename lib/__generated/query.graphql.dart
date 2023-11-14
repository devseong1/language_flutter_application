import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$getSentencesByCategoryId {
  factory Variables$Query$getSentencesByCategoryId(
          {required String categoryId}) =>
      Variables$Query$getSentencesByCategoryId._({
        r'categoryId': categoryId,
      });

  Variables$Query$getSentencesByCategoryId._(this._$data);

  factory Variables$Query$getSentencesByCategoryId.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$categoryId = data['categoryId'];
    result$data['categoryId'] = (l$categoryId as String);
    return Variables$Query$getSentencesByCategoryId._(result$data);
  }

  Map<String, dynamic> _$data;

  String get categoryId => (_$data['categoryId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$categoryId = categoryId;
    result$data['categoryId'] = l$categoryId;
    return result$data;
  }

  CopyWith$Variables$Query$getSentencesByCategoryId<
          Variables$Query$getSentencesByCategoryId>
      get copyWith => CopyWith$Variables$Query$getSentencesByCategoryId(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getSentencesByCategoryId) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$categoryId = categoryId;
    final lOther$categoryId = other.categoryId;
    if (l$categoryId != lOther$categoryId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$categoryId = categoryId;
    return Object.hashAll([l$categoryId]);
  }
}

abstract class CopyWith$Variables$Query$getSentencesByCategoryId<TRes> {
  factory CopyWith$Variables$Query$getSentencesByCategoryId(
    Variables$Query$getSentencesByCategoryId instance,
    TRes Function(Variables$Query$getSentencesByCategoryId) then,
  ) = _CopyWithImpl$Variables$Query$getSentencesByCategoryId;

  factory CopyWith$Variables$Query$getSentencesByCategoryId.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getSentencesByCategoryId;

  TRes call({String? categoryId});
}

class _CopyWithImpl$Variables$Query$getSentencesByCategoryId<TRes>
    implements CopyWith$Variables$Query$getSentencesByCategoryId<TRes> {
  _CopyWithImpl$Variables$Query$getSentencesByCategoryId(
    this._instance,
    this._then,
  );

  final Variables$Query$getSentencesByCategoryId _instance;

  final TRes Function(Variables$Query$getSentencesByCategoryId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? categoryId = _undefined}) =>
      _then(Variables$Query$getSentencesByCategoryId._({
        ..._instance._$data,
        if (categoryId != _undefined && categoryId != null)
          'categoryId': (categoryId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$getSentencesByCategoryId<TRes>
    implements CopyWith$Variables$Query$getSentencesByCategoryId<TRes> {
  _CopyWithStubImpl$Variables$Query$getSentencesByCategoryId(this._res);

  TRes _res;

  call({String? categoryId}) => _res;
}

class Query$getSentencesByCategoryId {
  Query$getSentencesByCategoryId({required this.getSentencesByCategoryId});

  factory Query$getSentencesByCategoryId.fromJson(Map<String, dynamic> json) {
    final l$getSentencesByCategoryId = json['getSentencesByCategoryId'];
    return Query$getSentencesByCategoryId(
        getSentencesByCategoryId: (l$getSentencesByCategoryId as List<dynamic>)
            .map((e) => Query$getSentencesByCategoryId$getSentencesByCategoryId
                .fromJson((e as Map<String, dynamic>)))
            .toList());
  }

  final List<Query$getSentencesByCategoryId$getSentencesByCategoryId>
      getSentencesByCategoryId;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getSentencesByCategoryId = getSentencesByCategoryId;
    _resultData['getSentencesByCategoryId'] =
        l$getSentencesByCategoryId.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getSentencesByCategoryId = getSentencesByCategoryId;
    return Object.hashAll(
        [Object.hashAll(l$getSentencesByCategoryId.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getSentencesByCategoryId) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$getSentencesByCategoryId = getSentencesByCategoryId;
    final lOther$getSentencesByCategoryId = other.getSentencesByCategoryId;
    if (l$getSentencesByCategoryId.length !=
        lOther$getSentencesByCategoryId.length) {
      return false;
    }
    for (int i = 0; i < l$getSentencesByCategoryId.length; i++) {
      final l$getSentencesByCategoryId$entry = l$getSentencesByCategoryId[i];
      final lOther$getSentencesByCategoryId$entry =
          lOther$getSentencesByCategoryId[i];
      if (l$getSentencesByCategoryId$entry !=
          lOther$getSentencesByCategoryId$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Query$getSentencesByCategoryId
    on Query$getSentencesByCategoryId {
  CopyWith$Query$getSentencesByCategoryId<Query$getSentencesByCategoryId>
      get copyWith => CopyWith$Query$getSentencesByCategoryId(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getSentencesByCategoryId<TRes> {
  factory CopyWith$Query$getSentencesByCategoryId(
    Query$getSentencesByCategoryId instance,
    TRes Function(Query$getSentencesByCategoryId) then,
  ) = _CopyWithImpl$Query$getSentencesByCategoryId;

  factory CopyWith$Query$getSentencesByCategoryId.stub(TRes res) =
      _CopyWithStubImpl$Query$getSentencesByCategoryId;

  TRes call(
      {List<Query$getSentencesByCategoryId$getSentencesByCategoryId>?
          getSentencesByCategoryId});
  TRes getSentencesByCategoryId(
      Iterable<Query$getSentencesByCategoryId$getSentencesByCategoryId> Function(
              Iterable<
                  CopyWith$Query$getSentencesByCategoryId$getSentencesByCategoryId<
                      Query$getSentencesByCategoryId$getSentencesByCategoryId>>)
          _fn);
}

class _CopyWithImpl$Query$getSentencesByCategoryId<TRes>
    implements CopyWith$Query$getSentencesByCategoryId<TRes> {
  _CopyWithImpl$Query$getSentencesByCategoryId(
    this._instance,
    this._then,
  );

  final Query$getSentencesByCategoryId _instance;

  final TRes Function(Query$getSentencesByCategoryId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? getSentencesByCategoryId = _undefined}) =>
      _then(Query$getSentencesByCategoryId(
          getSentencesByCategoryId: getSentencesByCategoryId == _undefined ||
                  getSentencesByCategoryId == null
              ? _instance.getSentencesByCategoryId
              : (getSentencesByCategoryId as List<
                  Query$getSentencesByCategoryId$getSentencesByCategoryId>)));

  TRes getSentencesByCategoryId(
          Iterable<Query$getSentencesByCategoryId$getSentencesByCategoryId> Function(
                  Iterable<
                      CopyWith$Query$getSentencesByCategoryId$getSentencesByCategoryId<
                          Query$getSentencesByCategoryId$getSentencesByCategoryId>>)
              _fn) =>
      call(
          getSentencesByCategoryId: _fn(_instance.getSentencesByCategoryId.map(
              (e) =>
                  CopyWith$Query$getSentencesByCategoryId$getSentencesByCategoryId(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$getSentencesByCategoryId<TRes>
    implements CopyWith$Query$getSentencesByCategoryId<TRes> {
  _CopyWithStubImpl$Query$getSentencesByCategoryId(this._res);

  TRes _res;

  call(
          {List<Query$getSentencesByCategoryId$getSentencesByCategoryId>?
              getSentencesByCategoryId}) =>
      _res;

  getSentencesByCategoryId(_fn) => _res;
}

const documentNodeQuerygetSentencesByCategoryId = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getSentencesByCategoryId'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'categoryId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'getSentencesByCategoryId'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'categoryId'),
            value: VariableNode(name: NameNode(value: 'categoryId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'sentence'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'keywords'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'categoryId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  ),
]);
Query$getSentencesByCategoryId _parserFn$Query$getSentencesByCategoryId(
        Map<String, dynamic> data) =>
    Query$getSentencesByCategoryId.fromJson(data);
typedef OnQueryComplete$Query$getSentencesByCategoryId = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$getSentencesByCategoryId?,
);

class Options$Query$getSentencesByCategoryId
    extends graphql.QueryOptions<Query$getSentencesByCategoryId> {
  Options$Query$getSentencesByCategoryId({
    String? operationName,
    required Variables$Query$getSentencesByCategoryId variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getSentencesByCategoryId? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getSentencesByCategoryId? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null
                        ? null
                        : _parserFn$Query$getSentencesByCategoryId(data),
                  ),
          onError: onError,
          document: documentNodeQuerygetSentencesByCategoryId,
          parserFn: _parserFn$Query$getSentencesByCategoryId,
        );

  final OnQueryComplete$Query$getSentencesByCategoryId? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$getSentencesByCategoryId
    extends graphql.WatchQueryOptions<Query$getSentencesByCategoryId> {
  WatchOptions$Query$getSentencesByCategoryId({
    String? operationName,
    required Variables$Query$getSentencesByCategoryId variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getSentencesByCategoryId? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQuerygetSentencesByCategoryId,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$getSentencesByCategoryId,
        );
}

class FetchMoreOptions$Query$getSentencesByCategoryId
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getSentencesByCategoryId({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$getSentencesByCategoryId variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerygetSentencesByCategoryId,
        );
}

extension ClientExtension$Query$getSentencesByCategoryId
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getSentencesByCategoryId>>
      query$getSentencesByCategoryId(
              Options$Query$getSentencesByCategoryId options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$getSentencesByCategoryId>
      watchQuery$getSentencesByCategoryId(
              WatchOptions$Query$getSentencesByCategoryId options) =>
          this.watchQuery(options);
  void writeQuery$getSentencesByCategoryId({
    required Query$getSentencesByCategoryId data,
    required Variables$Query$getSentencesByCategoryId variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQuerygetSentencesByCategoryId),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$getSentencesByCategoryId? readQuery$getSentencesByCategoryId({
    required Variables$Query$getSentencesByCategoryId variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQuerygetSentencesByCategoryId),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$getSentencesByCategoryId.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$getSentencesByCategoryId>
    useQuery$getSentencesByCategoryId(
            Options$Query$getSentencesByCategoryId options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$getSentencesByCategoryId>
    useWatchQuery$getSentencesByCategoryId(
            WatchOptions$Query$getSentencesByCategoryId options) =>
        graphql_flutter.useWatchQuery(options);

class Query$getSentencesByCategoryId$Widget
    extends graphql_flutter.Query<Query$getSentencesByCategoryId> {
  Query$getSentencesByCategoryId$Widget({
    widgets.Key? key,
    required Options$Query$getSentencesByCategoryId options,
    required graphql_flutter.QueryBuilder<Query$getSentencesByCategoryId>
        builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$getSentencesByCategoryId$getSentencesByCategoryId {
  Query$getSentencesByCategoryId$getSentencesByCategoryId({
    required this.sentence,
    required this.keywords,
    this.description,
    required this.categoryId,
  });

  factory Query$getSentencesByCategoryId$getSentencesByCategoryId.fromJson(
      Map<String, dynamic> json) {
    final l$sentence = json['sentence'];
    final l$keywords = json['keywords'];
    final l$description = json['description'];
    final l$categoryId = json['categoryId'];
    return Query$getSentencesByCategoryId$getSentencesByCategoryId(
      sentence: (l$sentence as String),
      keywords:
          (l$keywords as List<dynamic>).map((e) => (e as String)).toList(),
      description: (l$description as String?),
      categoryId: (l$categoryId as String),
    );
  }

  final String sentence;

  final List<String> keywords;

  final String? description;

  final String categoryId;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sentence = sentence;
    _resultData['sentence'] = l$sentence;
    final l$keywords = keywords;
    _resultData['keywords'] = l$keywords.map((e) => e).toList();
    final l$description = description;
    _resultData['description'] = l$description;
    final l$categoryId = categoryId;
    _resultData['categoryId'] = l$categoryId;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sentence = sentence;
    final l$keywords = keywords;
    final l$description = description;
    final l$categoryId = categoryId;
    return Object.hashAll([
      l$sentence,
      Object.hashAll(l$keywords.map((v) => v)),
      l$description,
      l$categoryId,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getSentencesByCategoryId$getSentencesByCategoryId) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sentence = sentence;
    final lOther$sentence = other.sentence;
    if (l$sentence != lOther$sentence) {
      return false;
    }
    final l$keywords = keywords;
    final lOther$keywords = other.keywords;
    if (l$keywords.length != lOther$keywords.length) {
      return false;
    }
    for (int i = 0; i < l$keywords.length; i++) {
      final l$keywords$entry = l$keywords[i];
      final lOther$keywords$entry = lOther$keywords[i];
      if (l$keywords$entry != lOther$keywords$entry) {
        return false;
      }
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$categoryId = categoryId;
    final lOther$categoryId = other.categoryId;
    if (l$categoryId != lOther$categoryId) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getSentencesByCategoryId$getSentencesByCategoryId
    on Query$getSentencesByCategoryId$getSentencesByCategoryId {
  CopyWith$Query$getSentencesByCategoryId$getSentencesByCategoryId<
          Query$getSentencesByCategoryId$getSentencesByCategoryId>
      get copyWith =>
          CopyWith$Query$getSentencesByCategoryId$getSentencesByCategoryId(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getSentencesByCategoryId$getSentencesByCategoryId<
    TRes> {
  factory CopyWith$Query$getSentencesByCategoryId$getSentencesByCategoryId(
    Query$getSentencesByCategoryId$getSentencesByCategoryId instance,
    TRes Function(Query$getSentencesByCategoryId$getSentencesByCategoryId) then,
  ) = _CopyWithImpl$Query$getSentencesByCategoryId$getSentencesByCategoryId;

  factory CopyWith$Query$getSentencesByCategoryId$getSentencesByCategoryId.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getSentencesByCategoryId$getSentencesByCategoryId;

  TRes call({
    String? sentence,
    List<String>? keywords,
    String? description,
    String? categoryId,
  });
}

class _CopyWithImpl$Query$getSentencesByCategoryId$getSentencesByCategoryId<
        TRes>
    implements
        CopyWith$Query$getSentencesByCategoryId$getSentencesByCategoryId<TRes> {
  _CopyWithImpl$Query$getSentencesByCategoryId$getSentencesByCategoryId(
    this._instance,
    this._then,
  );

  final Query$getSentencesByCategoryId$getSentencesByCategoryId _instance;

  final TRes Function(Query$getSentencesByCategoryId$getSentencesByCategoryId)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sentence = _undefined,
    Object? keywords = _undefined,
    Object? description = _undefined,
    Object? categoryId = _undefined,
  }) =>
      _then(Query$getSentencesByCategoryId$getSentencesByCategoryId(
        sentence: sentence == _undefined || sentence == null
            ? _instance.sentence
            : (sentence as String),
        keywords: keywords == _undefined || keywords == null
            ? _instance.keywords
            : (keywords as List<String>),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        categoryId: categoryId == _undefined || categoryId == null
            ? _instance.categoryId
            : (categoryId as String),
      ));
}

class _CopyWithStubImpl$Query$getSentencesByCategoryId$getSentencesByCategoryId<
        TRes>
    implements
        CopyWith$Query$getSentencesByCategoryId$getSentencesByCategoryId<TRes> {
  _CopyWithStubImpl$Query$getSentencesByCategoryId$getSentencesByCategoryId(
      this._res);

  TRes _res;

  call({
    String? sentence,
    List<String>? keywords,
    String? description,
    String? categoryId,
  }) =>
      _res;
}

class Variables$Query$getCategoriesByParentId {
  factory Variables$Query$getCategoriesByParentId({required String parentId}) =>
      Variables$Query$getCategoriesByParentId._({
        r'parentId': parentId,
      });

  Variables$Query$getCategoriesByParentId._(this._$data);

  factory Variables$Query$getCategoriesByParentId.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$parentId = data['parentId'];
    result$data['parentId'] = (l$parentId as String);
    return Variables$Query$getCategoriesByParentId._(result$data);
  }

  Map<String, dynamic> _$data;

  String get parentId => (_$data['parentId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$parentId = parentId;
    result$data['parentId'] = l$parentId;
    return result$data;
  }

  CopyWith$Variables$Query$getCategoriesByParentId<
          Variables$Query$getCategoriesByParentId>
      get copyWith => CopyWith$Variables$Query$getCategoriesByParentId(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getCategoriesByParentId) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$parentId = parentId;
    final lOther$parentId = other.parentId;
    if (l$parentId != lOther$parentId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$parentId = parentId;
    return Object.hashAll([l$parentId]);
  }
}

abstract class CopyWith$Variables$Query$getCategoriesByParentId<TRes> {
  factory CopyWith$Variables$Query$getCategoriesByParentId(
    Variables$Query$getCategoriesByParentId instance,
    TRes Function(Variables$Query$getCategoriesByParentId) then,
  ) = _CopyWithImpl$Variables$Query$getCategoriesByParentId;

  factory CopyWith$Variables$Query$getCategoriesByParentId.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getCategoriesByParentId;

  TRes call({String? parentId});
}

class _CopyWithImpl$Variables$Query$getCategoriesByParentId<TRes>
    implements CopyWith$Variables$Query$getCategoriesByParentId<TRes> {
  _CopyWithImpl$Variables$Query$getCategoriesByParentId(
    this._instance,
    this._then,
  );

  final Variables$Query$getCategoriesByParentId _instance;

  final TRes Function(Variables$Query$getCategoriesByParentId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? parentId = _undefined}) =>
      _then(Variables$Query$getCategoriesByParentId._({
        ..._instance._$data,
        if (parentId != _undefined && parentId != null)
          'parentId': (parentId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$getCategoriesByParentId<TRes>
    implements CopyWith$Variables$Query$getCategoriesByParentId<TRes> {
  _CopyWithStubImpl$Variables$Query$getCategoriesByParentId(this._res);

  TRes _res;

  call({String? parentId}) => _res;
}

class Query$getCategoriesByParentId {
  Query$getCategoriesByParentId({required this.getCategoriesByParentId});

  factory Query$getCategoriesByParentId.fromJson(Map<String, dynamic> json) {
    final l$getCategoriesByParentId = json['getCategoriesByParentId'];
    return Query$getCategoriesByParentId(
        getCategoriesByParentId: (l$getCategoriesByParentId as List<dynamic>)
            .map((e) =>
                Query$getCategoriesByParentId$getCategoriesByParentId.fromJson(
                    (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Query$getCategoriesByParentId$getCategoriesByParentId>
      getCategoriesByParentId;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getCategoriesByParentId = getCategoriesByParentId;
    _resultData['getCategoriesByParentId'] =
        l$getCategoriesByParentId.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getCategoriesByParentId = getCategoriesByParentId;
    return Object.hashAll(
        [Object.hashAll(l$getCategoriesByParentId.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getCategoriesByParentId) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$getCategoriesByParentId = getCategoriesByParentId;
    final lOther$getCategoriesByParentId = other.getCategoriesByParentId;
    if (l$getCategoriesByParentId.length !=
        lOther$getCategoriesByParentId.length) {
      return false;
    }
    for (int i = 0; i < l$getCategoriesByParentId.length; i++) {
      final l$getCategoriesByParentId$entry = l$getCategoriesByParentId[i];
      final lOther$getCategoriesByParentId$entry =
          lOther$getCategoriesByParentId[i];
      if (l$getCategoriesByParentId$entry !=
          lOther$getCategoriesByParentId$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Query$getCategoriesByParentId
    on Query$getCategoriesByParentId {
  CopyWith$Query$getCategoriesByParentId<Query$getCategoriesByParentId>
      get copyWith => CopyWith$Query$getCategoriesByParentId(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getCategoriesByParentId<TRes> {
  factory CopyWith$Query$getCategoriesByParentId(
    Query$getCategoriesByParentId instance,
    TRes Function(Query$getCategoriesByParentId) then,
  ) = _CopyWithImpl$Query$getCategoriesByParentId;

  factory CopyWith$Query$getCategoriesByParentId.stub(TRes res) =
      _CopyWithStubImpl$Query$getCategoriesByParentId;

  TRes call(
      {List<Query$getCategoriesByParentId$getCategoriesByParentId>?
          getCategoriesByParentId});
  TRes getCategoriesByParentId(
      Iterable<Query$getCategoriesByParentId$getCategoriesByParentId> Function(
              Iterable<
                  CopyWith$Query$getCategoriesByParentId$getCategoriesByParentId<
                      Query$getCategoriesByParentId$getCategoriesByParentId>>)
          _fn);
}

class _CopyWithImpl$Query$getCategoriesByParentId<TRes>
    implements CopyWith$Query$getCategoriesByParentId<TRes> {
  _CopyWithImpl$Query$getCategoriesByParentId(
    this._instance,
    this._then,
  );

  final Query$getCategoriesByParentId _instance;

  final TRes Function(Query$getCategoriesByParentId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? getCategoriesByParentId = _undefined}) =>
      _then(Query$getCategoriesByParentId(
          getCategoriesByParentId: getCategoriesByParentId == _undefined ||
                  getCategoriesByParentId == null
              ? _instance.getCategoriesByParentId
              : (getCategoriesByParentId as List<
                  Query$getCategoriesByParentId$getCategoriesByParentId>)));

  TRes getCategoriesByParentId(
          Iterable<Query$getCategoriesByParentId$getCategoriesByParentId> Function(
                  Iterable<
                      CopyWith$Query$getCategoriesByParentId$getCategoriesByParentId<
                          Query$getCategoriesByParentId$getCategoriesByParentId>>)
              _fn) =>
      call(
          getCategoriesByParentId: _fn(_instance.getCategoriesByParentId.map(
              (e) =>
                  CopyWith$Query$getCategoriesByParentId$getCategoriesByParentId(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$getCategoriesByParentId<TRes>
    implements CopyWith$Query$getCategoriesByParentId<TRes> {
  _CopyWithStubImpl$Query$getCategoriesByParentId(this._res);

  TRes _res;

  call(
          {List<Query$getCategoriesByParentId$getCategoriesByParentId>?
              getCategoriesByParentId}) =>
      _res;

  getCategoriesByParentId(_fn) => _res;
}

const documentNodeQuerygetCategoriesByParentId = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getCategoriesByParentId'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'parentId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'getCategoriesByParentId'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'parentId'),
            value: VariableNode(name: NameNode(value: 'parentId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'sequence'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'parentId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  ),
]);
Query$getCategoriesByParentId _parserFn$Query$getCategoriesByParentId(
        Map<String, dynamic> data) =>
    Query$getCategoriesByParentId.fromJson(data);
typedef OnQueryComplete$Query$getCategoriesByParentId = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$getCategoriesByParentId?,
);

class Options$Query$getCategoriesByParentId
    extends graphql.QueryOptions<Query$getCategoriesByParentId> {
  Options$Query$getCategoriesByParentId({
    String? operationName,
    required Variables$Query$getCategoriesByParentId variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getCategoriesByParentId? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getCategoriesByParentId? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null
                        ? null
                        : _parserFn$Query$getCategoriesByParentId(data),
                  ),
          onError: onError,
          document: documentNodeQuerygetCategoriesByParentId,
          parserFn: _parserFn$Query$getCategoriesByParentId,
        );

  final OnQueryComplete$Query$getCategoriesByParentId? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$getCategoriesByParentId
    extends graphql.WatchQueryOptions<Query$getCategoriesByParentId> {
  WatchOptions$Query$getCategoriesByParentId({
    String? operationName,
    required Variables$Query$getCategoriesByParentId variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getCategoriesByParentId? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQuerygetCategoriesByParentId,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$getCategoriesByParentId,
        );
}

class FetchMoreOptions$Query$getCategoriesByParentId
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getCategoriesByParentId({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$getCategoriesByParentId variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerygetCategoriesByParentId,
        );
}

extension ClientExtension$Query$getCategoriesByParentId
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getCategoriesByParentId>>
      query$getCategoriesByParentId(
              Options$Query$getCategoriesByParentId options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$getCategoriesByParentId>
      watchQuery$getCategoriesByParentId(
              WatchOptions$Query$getCategoriesByParentId options) =>
          this.watchQuery(options);
  void writeQuery$getCategoriesByParentId({
    required Query$getCategoriesByParentId data,
    required Variables$Query$getCategoriesByParentId variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQuerygetCategoriesByParentId),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$getCategoriesByParentId? readQuery$getCategoriesByParentId({
    required Variables$Query$getCategoriesByParentId variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQuerygetCategoriesByParentId),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$getCategoriesByParentId.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$getCategoriesByParentId>
    useQuery$getCategoriesByParentId(
            Options$Query$getCategoriesByParentId options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$getCategoriesByParentId>
    useWatchQuery$getCategoriesByParentId(
            WatchOptions$Query$getCategoriesByParentId options) =>
        graphql_flutter.useWatchQuery(options);

class Query$getCategoriesByParentId$Widget
    extends graphql_flutter.Query<Query$getCategoriesByParentId> {
  Query$getCategoriesByParentId$Widget({
    widgets.Key? key,
    required Options$Query$getCategoriesByParentId options,
    required graphql_flutter.QueryBuilder<Query$getCategoriesByParentId>
        builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$getCategoriesByParentId$getCategoriesByParentId {
  Query$getCategoriesByParentId$getCategoriesByParentId({
    required this.id,
    required this.name,
    required this.sequence,
    this.description,
    this.parentId,
  });

  factory Query$getCategoriesByParentId$getCategoriesByParentId.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$sequence = json['sequence'];
    final l$description = json['description'];
    final l$parentId = json['parentId'];
    return Query$getCategoriesByParentId$getCategoriesByParentId(
      id: (l$id as String),
      name: (l$name as String),
      sequence: (l$sequence as int),
      description: (l$description as String?),
      parentId: (l$parentId as String?),
    );
  }

  final String id;

  final String name;

  final int sequence;

  final String? description;

  final String? parentId;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$sequence = sequence;
    _resultData['sequence'] = l$sequence;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$parentId = parentId;
    _resultData['parentId'] = l$parentId;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$sequence = sequence;
    final l$description = description;
    final l$parentId = parentId;
    return Object.hashAll([
      l$id,
      l$name,
      l$sequence,
      l$description,
      l$parentId,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getCategoriesByParentId$getCategoriesByParentId) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$sequence = sequence;
    final lOther$sequence = other.sequence;
    if (l$sequence != lOther$sequence) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$parentId = parentId;
    final lOther$parentId = other.parentId;
    if (l$parentId != lOther$parentId) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getCategoriesByParentId$getCategoriesByParentId
    on Query$getCategoriesByParentId$getCategoriesByParentId {
  CopyWith$Query$getCategoriesByParentId$getCategoriesByParentId<
          Query$getCategoriesByParentId$getCategoriesByParentId>
      get copyWith =>
          CopyWith$Query$getCategoriesByParentId$getCategoriesByParentId(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getCategoriesByParentId$getCategoriesByParentId<
    TRes> {
  factory CopyWith$Query$getCategoriesByParentId$getCategoriesByParentId(
    Query$getCategoriesByParentId$getCategoriesByParentId instance,
    TRes Function(Query$getCategoriesByParentId$getCategoriesByParentId) then,
  ) = _CopyWithImpl$Query$getCategoriesByParentId$getCategoriesByParentId;

  factory CopyWith$Query$getCategoriesByParentId$getCategoriesByParentId.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getCategoriesByParentId$getCategoriesByParentId;

  TRes call({
    String? id,
    String? name,
    int? sequence,
    String? description,
    String? parentId,
  });
}

class _CopyWithImpl$Query$getCategoriesByParentId$getCategoriesByParentId<TRes>
    implements
        CopyWith$Query$getCategoriesByParentId$getCategoriesByParentId<TRes> {
  _CopyWithImpl$Query$getCategoriesByParentId$getCategoriesByParentId(
    this._instance,
    this._then,
  );

  final Query$getCategoriesByParentId$getCategoriesByParentId _instance;

  final TRes Function(Query$getCategoriesByParentId$getCategoriesByParentId)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? sequence = _undefined,
    Object? description = _undefined,
    Object? parentId = _undefined,
  }) =>
      _then(Query$getCategoriesByParentId$getCategoriesByParentId(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        sequence: sequence == _undefined || sequence == null
            ? _instance.sequence
            : (sequence as int),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        parentId:
            parentId == _undefined ? _instance.parentId : (parentId as String?),
      ));
}

class _CopyWithStubImpl$Query$getCategoriesByParentId$getCategoriesByParentId<
        TRes>
    implements
        CopyWith$Query$getCategoriesByParentId$getCategoriesByParentId<TRes> {
  _CopyWithStubImpl$Query$getCategoriesByParentId$getCategoriesByParentId(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? sequence,
    String? description,
    String? parentId,
  }) =>
      _res;
}
