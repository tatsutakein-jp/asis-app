import 'package:backend/http_auth_link.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:ferry/ferry.dart';
import 'package:gql_exec/gql_exec.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:gql_transform_link/gql_transform_link.dart';

Handler middleware(Handler handler) {
  return (context) async {
    return await handler.use(
      provider<Client>(
        (context) {
          return Client(
            link: Link.from(
              [
                TransformLink(
                  requestTransformer: (request) =>
                      request.updateContextEntry<HttpLinkHeaders>(
                    (headers) {
                      final authHeader =
                          context.request.headers['Authorization'];

                      return HttpLinkHeaders(
                        headers: <String, String>{
                          ...headers?.headers ?? <String, String>{},
                          if (authHeader != null) 'Authorization': authHeader,
                        },
                      );
                    },
                  ),
                ),
                HttpAuthLink(
                  // TODO: env から読み込む
                  url: 'https://asis-stg.hasura.app/v1/graphql',
                )
              ],
            ),
            cache: Cache(),
            defaultFetchPolicies: {
              OperationType.query: FetchPolicy.NetworkOnly,
            },
          );
        },
      ),
    ).call(context);
  };
}
