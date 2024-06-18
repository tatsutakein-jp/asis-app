// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:gql/ast.dart' as _i1;

const schema = _i1.SchemaDefinitionNode(
  directives: [],
  operationTypes: [
    _i1.OperationTypeDefinitionNode(
      operation: _i1.OperationType.query,
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'query_root'),
        isNonNull: false,
      ),
    ),
    _i1.OperationTypeDefinitionNode(
      operation: _i1.OperationType.subscription,
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'subscription_root'),
        isNonNull: false,
      ),
    ),
  ],
);
const cached = _i1.DirectiveDefinitionNode(
  name: _i1.NameNode(value: 'cached'),
  args: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'ttl'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: true,
      ),
      defaultValue: _i1.IntValueNode(value: '60'),
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'refresh'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: true,
      ),
      defaultValue: _i1.BooleanValueNode(value: false),
    ),
  ],
  locations: [_i1.DirectiveLocation.query],
  repeatable: false,
);
const CursorOrdering = _i1.EnumTypeDefinitionNode(
  name: _i1.NameNode(value: 'CursorOrdering'),
  directives: [],
  values: [
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'ASC'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'DESC'),
      directives: [],
    ),
  ],
);
const News = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'News'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'content'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'coverImageUrl'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'createdAt'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'excerpt'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'id'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'publishedAt'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'seo'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Seos'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'seoId'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'slug'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'title'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'updatedAt'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: true,
      ),
    ),
  ],
);
const NewsBoolExp = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'NewsBoolExp'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_and'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'NewsBoolExp'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_not'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'NewsBoolExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_or'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'NewsBoolExp'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'content'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'StringComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'coverImageUrl'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'StringComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'createdAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'TimestamptzComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'excerpt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'StringComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'UuidComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'publishedAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'TimestamptzComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'seo'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'SeosBoolExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'seoId'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'UuidComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'slug'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'StringComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'title'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'StringComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updatedAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'TimestamptzComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const NewsOrderBy = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'NewsOrderBy'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'content'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'coverImageUrl'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'createdAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'excerpt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'publishedAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'seo'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'SeosOrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'seoId'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'slug'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'title'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updatedAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const NewsSelectColumn = _i1.EnumTypeDefinitionNode(
  name: _i1.NameNode(value: 'NewsSelectColumn'),
  directives: [],
  values: [
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'content'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'coverImageUrl'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'createdAt'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'excerpt'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'id'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'publishedAt'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'seoId'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'slug'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'title'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'updatedAt'),
      directives: [],
    ),
  ],
);
const NewsStreamCursorInput = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'NewsStreamCursorInput'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'initialValue'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'NewsStreamCursorValueInput'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'ordering'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'CursorOrdering'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const NewsStreamCursorValueInput = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'NewsStreamCursorValueInput'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'content'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'coverImageUrl'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'createdAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'excerpt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'publishedAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'seoId'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'slug'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'title'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updatedAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const Notifications = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'Notifications'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'content'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'coverImageUrl'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'createdAt'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'excerpt'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'firstOpenedAt'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'id'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'publishedAt'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'title'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'updatedAt'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'userId'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
    ),
  ],
);
const NotificationsBoolExp = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'NotificationsBoolExp'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_and'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'NotificationsBoolExp'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_not'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'NotificationsBoolExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_or'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'NotificationsBoolExp'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'content'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'StringComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'coverImageUrl'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'StringComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'createdAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'TimestamptzComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'excerpt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'StringComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'firstOpenedAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'TimestamptzComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'UuidComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'publishedAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'TimestamptzComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'title'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'StringComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updatedAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'TimestamptzComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'userId'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'StringComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const NotificationsOrderBy = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'NotificationsOrderBy'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'content'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'coverImageUrl'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'createdAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'excerpt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'firstOpenedAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'publishedAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'title'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updatedAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'userId'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const NotificationsSelectColumn = _i1.EnumTypeDefinitionNode(
  name: _i1.NameNode(value: 'NotificationsSelectColumn'),
  directives: [],
  values: [
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'content'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'coverImageUrl'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'createdAt'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'excerpt'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'firstOpenedAt'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'id'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'publishedAt'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'title'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'updatedAt'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'userId'),
      directives: [],
    ),
  ],
);
const NotificationsStreamCursorInput = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'NotificationsStreamCursorInput'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'initialValue'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'NotificationsStreamCursorValueInput'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'ordering'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'CursorOrdering'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const NotificationsStreamCursorValueInput = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'NotificationsStreamCursorValueInput'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'content'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'coverImageUrl'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'createdAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'excerpt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'firstOpenedAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'publishedAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'title'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updatedAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'userId'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const OrderBy = _i1.EnumTypeDefinitionNode(
  name: _i1.NameNode(value: 'OrderBy'),
  directives: [],
  values: [
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'ASC'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'ASC_NULLS_FIRST'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'ASC_NULLS_LAST'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'DESC'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'DESC_NULLS_FIRST'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'DESC_NULLS_LAST'),
      directives: [],
    ),
  ],
);
const Seos = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'Seos'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'createdAt'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'description'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'id'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'ogImageUrl'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'title'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'updatedAt'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: true,
      ),
    ),
  ],
);
const SeosBoolExp = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'SeosBoolExp'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_and'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'SeosBoolExp'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_not'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'SeosBoolExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_or'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'SeosBoolExp'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'createdAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'TimestamptzComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'description'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'StringComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'UuidComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'ogImageUrl'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'StringComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'title'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'StringComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updatedAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'TimestamptzComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const SeosOrderBy = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'SeosOrderBy'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'createdAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'description'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'ogImageUrl'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'title'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updatedAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const SeosSelectColumn = _i1.EnumTypeDefinitionNode(
  name: _i1.NameNode(value: 'SeosSelectColumn'),
  directives: [],
  values: [
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'createdAt'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'description'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'id'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'ogImageUrl'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'title'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'updatedAt'),
      directives: [],
    ),
  ],
);
const SeosStreamCursorInput = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'SeosStreamCursorInput'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'initialValue'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'SeosStreamCursorValueInput'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'ordering'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'CursorOrdering'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const SeosStreamCursorValueInput = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'SeosStreamCursorValueInput'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'createdAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'description'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'ogImageUrl'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'title'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updatedAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const StringComparisonExp = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'StringComparisonExp'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_eq'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_gt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_gte'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_ilike'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_in'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'String'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_iregex'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_isNull'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_like'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_lt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_lte'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_neq'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_nilike'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_nin'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'String'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_niregex'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_nlike'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_nregex'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_nsimilar'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_regex'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_similar'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const Tags = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'Tags'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'createdAt'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'description'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'id'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'tag'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'updatedAt'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: true,
      ),
    ),
  ],
);
const TagsBoolExp = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'TagsBoolExp'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_and'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'TagsBoolExp'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_not'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'TagsBoolExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_or'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'TagsBoolExp'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'createdAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'TimestamptzComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'description'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'StringComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'UuidComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'tag'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'StringComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updatedAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'TimestamptzComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const TagsOrderBy = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'TagsOrderBy'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'createdAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'description'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'tag'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updatedAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const TagsSelectColumn = _i1.EnumTypeDefinitionNode(
  name: _i1.NameNode(value: 'TagsSelectColumn'),
  directives: [],
  values: [
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'createdAt'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'description'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'id'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'tag'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'updatedAt'),
      directives: [],
    ),
  ],
);
const TagsStreamCursorInput = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'TagsStreamCursorInput'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'initialValue'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'TagsStreamCursorValueInput'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'ordering'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'CursorOrdering'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const TagsStreamCursorValueInput = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'TagsStreamCursorValueInput'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'createdAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'description'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'tag'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updatedAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const TimestamptzComparisonExp = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'TimestamptzComparisonExp'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_eq'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_gt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_gte'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_in'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'timestamptz'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_isNull'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_lt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_lte'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_neq'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_nin'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'timestamptz'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const Users = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'Users'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'createdAt'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'email'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'id'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'lastSeen'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'nickname'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'picture'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'updatedAt'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'username'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'website'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
    ),
  ],
);
const UsersBoolExp = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'UsersBoolExp'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_and'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'UsersBoolExp'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_not'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'UsersBoolExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_or'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'UsersBoolExp'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'createdAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'TimestamptzComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'email'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'StringComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'StringComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'lastSeen'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'TimestamptzComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'nickname'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'StringComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'picture'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'StringComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updatedAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'TimestamptzComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'username'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'StringComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'website'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'StringComparisonExp'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const UsersOrderBy = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'UsersOrderBy'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'createdAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'email'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'lastSeen'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'nickname'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'picture'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updatedAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'username'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'website'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'OrderBy'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const UsersSelectColumn = _i1.EnumTypeDefinitionNode(
  name: _i1.NameNode(value: 'UsersSelectColumn'),
  directives: [],
  values: [
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'createdAt'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'email'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'id'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'lastSeen'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'nickname'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'picture'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'updatedAt'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'username'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'website'),
      directives: [],
    ),
  ],
);
const UsersStreamCursorInput = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'UsersStreamCursorInput'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'initialValue'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'UsersStreamCursorValueInput'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'ordering'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'CursorOrdering'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const UsersStreamCursorValueInput = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'UsersStreamCursorValueInput'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'createdAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'email'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'id'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'lastSeen'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'nickname'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'picture'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'updatedAt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'timestamptz'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'username'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'website'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const UuidComparisonExp = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'UuidComparisonExp'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_eq'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_gt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_gte'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_in'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'uuid'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_isNull'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Boolean'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_lt'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_lte'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_neq'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: '_nin'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'uuid'),
          isNonNull: true,
        ),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const query_root = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'query_root'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'news'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinctOn'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'NewsSelectColumn'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'orderBy'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'NewsOrderBy'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'NewsBoolExp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'News'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'newsByPk'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'id'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'News'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'notifications'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinctOn'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'NotificationsSelectColumn'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'orderBy'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'NotificationsOrderBy'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'NotificationsBoolExp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'Notifications'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'notificationsByPk'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'id'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Notifications'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'seos'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinctOn'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'SeosSelectColumn'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'orderBy'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'SeosOrderBy'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'SeosBoolExp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'Seos'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'seosByPk'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'id'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Seos'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'tags'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinctOn'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'TagsSelectColumn'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'orderBy'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'TagsOrderBy'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'TagsBoolExp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'Tags'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'tagsByPk'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'id'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Tags'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'users'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinctOn'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'UsersSelectColumn'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'orderBy'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'UsersOrderBy'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'UsersBoolExp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'Users'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'usersByPk'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'id'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'String'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Users'),
        isNonNull: false,
      ),
    ),
  ],
);
const subscription_root = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'subscription_root'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'news'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinctOn'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'NewsSelectColumn'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'orderBy'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'NewsOrderBy'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'NewsBoolExp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'News'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'newsByPk'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'id'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'News'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'newsStream'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'batchSize'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'cursor'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'NewsStreamCursorInput'),
              isNonNull: false,
            ),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'NewsBoolExp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'News'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'notifications'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinctOn'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'NotificationsSelectColumn'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'orderBy'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'NotificationsOrderBy'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'NotificationsBoolExp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'Notifications'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'notificationsByPk'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'id'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Notifications'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'notificationsStream'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'batchSize'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'cursor'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'NotificationsStreamCursorInput'),
              isNonNull: false,
            ),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'NotificationsBoolExp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'Notifications'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'seos'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinctOn'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'SeosSelectColumn'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'orderBy'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'SeosOrderBy'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'SeosBoolExp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'Seos'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'seosByPk'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'id'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Seos'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'seosStream'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'batchSize'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'cursor'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'SeosStreamCursorInput'),
              isNonNull: false,
            ),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'SeosBoolExp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'Seos'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'tags'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinctOn'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'TagsSelectColumn'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'orderBy'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'TagsOrderBy'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'TagsBoolExp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'Tags'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'tagsByPk'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'id'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Tags'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'tagsStream'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'batchSize'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'cursor'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'TagsStreamCursorInput'),
              isNonNull: false,
            ),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'TagsBoolExp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'Tags'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'users'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'distinctOn'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'UsersSelectColumn'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'limit'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'offset'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'orderBy'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'UsersOrderBy'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'UsersBoolExp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'Users'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'usersByPk'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'id'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'String'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Users'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'usersStream'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'batchSize'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'cursor'),
          directives: [],
          type: _i1.ListTypeNode(
            type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'UsersStreamCursorInput'),
              isNonNull: false,
            ),
            isNonNull: true,
          ),
          defaultValue: null,
        ),
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'where'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'UsersBoolExp'),
            isNonNull: false,
          ),
          defaultValue: null,
        ),
      ],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'Users'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
  ],
);
const timestamptz = _i1.ScalarTypeDefinitionNode(
  name: _i1.NameNode(value: 'timestamptz'),
  directives: [],
);
const uuid = _i1.ScalarTypeDefinitionNode(
  name: _i1.NameNode(value: 'uuid'),
  directives: [],
);
const document = _i1.DocumentNode(definitions: [
  schema,
  cached,
  CursorOrdering,
  News,
  NewsBoolExp,
  NewsOrderBy,
  NewsSelectColumn,
  NewsStreamCursorInput,
  NewsStreamCursorValueInput,
  Notifications,
  NotificationsBoolExp,
  NotificationsOrderBy,
  NotificationsSelectColumn,
  NotificationsStreamCursorInput,
  NotificationsStreamCursorValueInput,
  OrderBy,
  Seos,
  SeosBoolExp,
  SeosOrderBy,
  SeosSelectColumn,
  SeosStreamCursorInput,
  SeosStreamCursorValueInput,
  StringComparisonExp,
  Tags,
  TagsBoolExp,
  TagsOrderBy,
  TagsSelectColumn,
  TagsStreamCursorInput,
  TagsStreamCursorValueInput,
  TimestamptzComparisonExp,
  Users,
  UsersBoolExp,
  UsersOrderBy,
  UsersSelectColumn,
  UsersStreamCursorInput,
  UsersStreamCursorValueInput,
  UuidComparisonExp,
  query_root,
  subscription_root,
  timestamptz,
  uuid,
]);
