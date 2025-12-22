import '../database.dart';

class UserRankViewTable extends SupabaseTable<UserRankViewRow> {
  @override
  String get tableName => 'user_rank_view';

  @override
  UserRankViewRow createRow(Map<String, dynamic> data) => UserRankViewRow(data);
}

class UserRankViewRow extends SupabaseDataRow {
  UserRankViewRow(super.data);

  @override
  SupabaseTable get table => UserRankViewTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String? get rank => getField<String>('rank');
  set rank(String? value) => setField<String>('rank', value);
}
