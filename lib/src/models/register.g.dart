// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register.dart';

// **************************************************************************
// MigrationGenerator
// **************************************************************************

class RegisterMigration extends Migration {
  @override
  void up(Schema schema) {
    schema.create(
      'registers',
      (table) {
        table.serial('id').primaryKey();
        table.timeStamp('created_at');
        table.timeStamp('updated_at');
        table.varChar(
          'username',
          length: 255,
        );
        table.varChar(
          'password',
          length: 255,
        );
      },
    );
  }

  @override
  void down(Schema schema) {
    schema.drop('registers');
  }
}

// **************************************************************************
// OrmGenerator
// **************************************************************************

class RegisterQuery extends Query<Register, RegisterQueryWhere> {
  RegisterQuery({
    Query? parent,
    Set<String>? trampoline,
  }) : super(parent: parent) {
    trampoline ??= <String>{};
    trampoline.add(tableName);
    _where = RegisterQueryWhere(this);
  }

  @override
  final RegisterQueryValues values = RegisterQueryValues();

  List<String> _selectedFields = [];

  RegisterQueryWhere? _where;

  @override
  Map<String, String> get casts {
    return {};
  }

  @override
  String get tableName {
    return 'registers';
  }

  @override
  List<String> get fields {
    const _fields = [
      'id',
      'created_at',
      'updated_at',
      'username',
      'password',
    ];
    return _selectedFields.isEmpty
        ? _fields
        : _fields.where((field) => _selectedFields.contains(field)).toList();
  }

  RegisterQuery select(List<String> selectedFields) {
    _selectedFields = selectedFields;
    return this;
  }

  @override
  RegisterQueryWhere? get where {
    return _where;
  }

  @override
  RegisterQueryWhere newWhereClause() {
    return RegisterQueryWhere(this);
  }

  Optional<Register> parseRow(List row) {
    if (row.every((x) => x == null)) {
      return Optional.empty();
    }
    var model = Register(
      id: fields.contains('id') ? row[0].toString() : null,
      createdAt:
          fields.contains('created_at') ? mapToNullableDateTime(row[1]) : null,
      updatedAt:
          fields.contains('updated_at') ? mapToNullableDateTime(row[2]) : null,
      username: fields.contains('username') ? (row[3] as String?) : null,
      password: fields.contains('password') ? (row[4] as String?) : null,
    );
    return Optional.of(model);
  }

  @override
  Optional<Register> deserialize(List row) {
    return parseRow(row);
  }
}

class RegisterQueryWhere extends QueryWhere {
  RegisterQueryWhere(RegisterQuery query)
      : id = NumericSqlExpressionBuilder<int>(
          query,
          'id',
        ),
        createdAt = DateTimeSqlExpressionBuilder(
          query,
          'created_at',
        ),
        updatedAt = DateTimeSqlExpressionBuilder(
          query,
          'updated_at',
        ),
        username = StringSqlExpressionBuilder(
          query,
          'username',
        ),
        password = StringSqlExpressionBuilder(
          query,
          'password',
        );

  final NumericSqlExpressionBuilder<int> id;

  final DateTimeSqlExpressionBuilder createdAt;

  final DateTimeSqlExpressionBuilder updatedAt;

  final StringSqlExpressionBuilder username;

  final StringSqlExpressionBuilder password;

  @override
  List<SqlExpressionBuilder> get expressionBuilders {
    return [
      id,
      createdAt,
      updatedAt,
      username,
      password,
    ];
  }
}

class RegisterQueryValues extends MapQueryValues {
  @override
  Map<String, String> get casts {
    return {};
  }

  String? get id {
    return (values['id'] as String?);
  }

  set id(String? value) => values['id'] = value;
  DateTime? get createdAt {
    return (values['created_at'] as DateTime?);
  }

  set createdAt(DateTime? value) => values['created_at'] = value;
  DateTime? get updatedAt {
    return (values['updated_at'] as DateTime?);
  }

  set updatedAt(DateTime? value) => values['updated_at'] = value;
  String? get username {
    return (values['username'] as String?);
  }

  set username(String? value) => values['username'] = value;
  String? get password {
    return (values['password'] as String?);
  }

  set password(String? value) => values['password'] = value;
  void copyFrom(Register model) {
    createdAt = model.createdAt;
    updatedAt = model.updatedAt;
    username = model.username;
    password = model.password;
  }
}

// **************************************************************************
// JsonModelGenerator
// **************************************************************************

@generatedSerializable
class Register extends _Register {
  Register({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.username,
    this.password,
  });

  /// A unique identifier corresponding to this item.
  @override
  String? id;

  /// The time at which this item was created.
  @override
  DateTime? createdAt;

  /// The last time at which this item was updated.
  @override
  DateTime? updatedAt;

  @override
  String? username;

  @override
  String? password;

  Register copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? username,
    String? password,
  }) {
    return Register(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        username: username ?? this.username,
        password: password ?? this.password);
  }

  @override
  bool operator ==(other) {
    return other is _Register &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.username == username &&
        other.password == password;
  }

  @override
  int get hashCode {
    return hashObjects([
      id,
      createdAt,
      updatedAt,
      username,
      password,
    ]);
  }

  @override
  String toString() {
    return 'Register(id=$id, createdAt=$createdAt, updatedAt=$updatedAt, username=$username, password=$password)';
  }

  Map<String, dynamic> toJson() {
    return RegisterSerializer.toMap(this);
  }
}

// **************************************************************************
// SerializerGenerator
// **************************************************************************

const RegisterSerializer registerSerializer = RegisterSerializer();

class RegisterEncoder extends Converter<Register, Map> {
  const RegisterEncoder();

  @override
  Map convert(Register model) => RegisterSerializer.toMap(model);
}

class RegisterDecoder extends Converter<Map, Register> {
  const RegisterDecoder();

  @override
  Register convert(Map map) => RegisterSerializer.fromMap(map);
}

class RegisterSerializer extends Codec<Register, Map> {
  const RegisterSerializer();

  @override
  RegisterEncoder get encoder => const RegisterEncoder();
  @override
  RegisterDecoder get decoder => const RegisterDecoder();
  static Register fromMap(Map map) {
    return Register(
        id: map['id'] as String?,
        createdAt: map['created_at'] != null
            ? (map['created_at'] is DateTime
                ? (map['created_at'] as DateTime)
                : DateTime.parse(map['created_at'].toString()))
            : null,
        updatedAt: map['updated_at'] != null
            ? (map['updated_at'] is DateTime
                ? (map['updated_at'] as DateTime)
                : DateTime.parse(map['updated_at'].toString()))
            : null,
        username: map['username'] as String?,
        password: map['password'] as String?);
  }

  static Map<String, dynamic> toMap(_Register? model) {
    if (model == null) {
      throw FormatException("Required field [model] cannot be null");
    }
    return {
      'id': model.id,
      'created_at': model.createdAt?.toIso8601String(),
      'updated_at': model.updatedAt?.toIso8601String(),
      'username': model.username,
      'password': model.password
    };
  }
}

abstract class RegisterFields {
  static const List<String> allFields = <String>[
    id,
    createdAt,
    updatedAt,
    username,
    password,
  ];

  static const String id = 'id';

  static const String createdAt = 'created_at';

  static const String updatedAt = 'updated_at';

  static const String username = 'username';

  static const String password = 'password';
}
