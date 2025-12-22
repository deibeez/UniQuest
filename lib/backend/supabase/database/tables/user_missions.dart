import '../database.dart';

class UserMissionsTable extends SupabaseTable<UserMissionsRow> {
  @override
  String get tableName => 'user_missions';

  @override
  UserMissionsRow createRow(Map<String, dynamic> data) => UserMissionsRow(data);
}

class UserMissionsRow extends SupabaseDataRow {
  UserMissionsRow(super.data);

  @override
  SupabaseTable get table => UserMissionsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get missionId => getField<String>('mission_id');
  set missionId(String? value) => setField<String>('mission_id', value);

  int? get progress => getField<int>('progress');
  set progress(int? value) => setField<int>('progress', value);

  bool? get completed => getField<bool>('completed');
  set completed(bool? value) => setField<bool>('completed', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get missionTitle => getField<String>('mission_title');
  set missionTitle(String? value) => setField<String>('mission_title', value);

  String? get missionDescription => getField<String>('mission_description');
  set missionDescription(String? value) =>
      setField<String>('mission_description', value);

  bool get isArchived => getField<bool>('is_archived')!;
  set isArchived(bool value) => setField<bool>('is_archived', value);
}
