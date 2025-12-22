import '../database.dart';

class PublicUsersTable extends SupabaseTable<PublicUsersRow> {
  @override
  String get tableName => 'public.users';

  @override
  PublicUsersRow createRow(Map<String, dynamic> data) => PublicUsersRow(data);
}

class PublicUsersRow extends SupabaseDataRow {
  PublicUsersRow(super.data);

  @override
  SupabaseTable get table => PublicUsersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get uid => getField<String>('uid');
  set uid(String? value) => setField<String>('uid', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String? get avatarUrl => getField<String>('avatar_url');
  set avatarUrl(String? value) => setField<String>('avatar_url', value);
}
