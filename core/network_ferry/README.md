# core_network_ferry package

![Dependency graph](../../docs/images/graphs/dep_graph_core_network.svg)

## スキーマの更新

core/network_ferry/lib/src/http_auth_link.dart などでトークンを取得する処理を追加する。

```text
@override
Stream<Response> request(Request request, [NextLink? forward]) async* {
  if (_token == null) {
    await updateToken();
  }
  print('Bearer $_token');

  yield* _link.request(request, forward);
}
```

以下のコマンドでスキーマを更新する。

```shell
cd core/network_ferry/lib/src/graphql/
gq https://asis-stg.hasura.app/v1/graphql -H "Authorization: Bearer xxxxxxxxxxxxxxxxxxxx" --introspect > schema.graphql
```
