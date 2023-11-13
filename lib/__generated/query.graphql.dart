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
            name: NameNode(value: 'fromSentence'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'toSentence'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'toSentenceKeywords'),
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
    required this.fromSentence,
    required this.toSentence,
    required this.toSentenceKeywords,
    this.description,
    required this.categoryId,
  });

  factory Query$getSentencesByCategoryId$getSentencesByCategoryId.fromJson(
      Map<String, dynamic> json) {
    final l$fromSentence = json['fromSentence'];
    final l$toSentence = json['toSentence'];
    final l$toSentenceKeywords = json['toSentenceKeywords'];
    final l$description = json['description'];
    final l$categoryId = json['categoryId'];
    return Query$getSentencesByCategoryId$getSentencesByCategoryId(
      fromSentence: (l$fromSentence as String),
      toSentence: (l$toSentence as String),
      toSentenceKeywords: (l$toSentenceKeywords as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      description: (l$description as String?),
      categoryId: (l$categoryId as String),
    );
  }

  final String fromSentence;

  final String toSentence;

  final List<String> toSentenceKeywords;

  final String? description;

  final String categoryId;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$fromSentence = fromSentence;
    _resultData['fromSentence'] = l$fromSentence;
    final l$toSentence = toSentence;
    _resultData['toSentence'] = l$toSentence;
    final l$toSentenceKeywords = toSentenceKeywords;
    _resultData['toSentenceKeywords'] =
        l$toSentenceKeywords.map((e) => e).toList();
    final l$description = description;
    _resultData['description'] = l$description;
    final l$categoryId = categoryId;
    _resultData['categoryId'] = l$categoryId;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$fromSentence = fromSentence;
    final l$toSentence = toSentence;
    final l$toSentenceKeywords = toSentenceKeywords;
    final l$description = description;
    final l$categoryId = categoryId;
    return Object.hashAll([
      l$fromSentence,
      l$toSentence,
      Object.hashAll(l$toSentenceKeywords.map((v) => v)),
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
    final l$fromSentence = fromSentence;
    final lOther$fromSentence = other.fromSentence;
    if (l$fromSentence != lOther$fromSentence) {
      return false;
    }
    final l$toSentence = toSentence;
    final lOther$toSentence = other.toSentence;
    if (l$toSentence != lOther$toSentence) {
      return false;
    }
    final l$toSentenceKeywords = toSentenceKeywords;
    final lOther$toSentenceKeywords = other.toSentenceKeywords;
    if (l$toSentenceKeywords.length != lOther$toSentenceKeywords.length) {
      return false;
    }
    for (int i = 0; i < l$toSentenceKeywords.length; i++) {
      final l$toSentenceKeywords$entry = l$toSentenceKeywords[i];
      final lOther$toSentenceKeywords$entry = lOther$toSentenceKeywords[i];
      if (l$toSentenceKeywords$entry != lOther$toSentenceKeywords$entry) {
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
    String? fromSentence,
    String? toSentence,
    List<String>? toSentenceKeywords,
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
    Object? fromSentence = _undefined,
    Object? toSentence = _undefined,
    Object? toSentenceKeywords = _undefined,
    Object? description = _undefined,
    Object? categoryId = _undefined,
  }) =>
      _then(Query$getSentencesByCategoryId$getSentencesByCategoryId(
        fromSentence: fromSentence == _undefined || fromSentence == null
            ? _instance.fromSentence
            : (fromSentence as String),
        toSentence: toSentence == _undefined || toSentence == null
            ? _instance.toSentence
            : (toSentence as String),
        toSentenceKeywords:
            toSentenceKeywords == _undefined || toSentenceKeywords == null
                ? _instance.toSentenceKeywords
                : (toSentenceKeywords as List<String>),
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
    String? fromSentence,
    String? toSentence,
    List<String>? toSentenceKeywords,
    String? description,
    String? categoryId,
  }) =>
      _res;
}
