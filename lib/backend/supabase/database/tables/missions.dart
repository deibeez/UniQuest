import '../database.dart';

class MissionsTable extends SupabaseTable<MissionsRow> {
  @override
  String get tableName => 'missions';

  @override
  MissionsRow createRow(Map<String, dynamic> data) => MissionsRow(data);
}

class MissionsRow extends SupabaseDataRow {
  MissionsRow(super.data);

  @override
  SupabaseTable get table => MissionsTable();

  String get missionId => getField<String>('mission_id')!;
  set missionId(String value) => setField<String>('mission_id', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String get trigger => getField<String>('trigger')!;
  set trigger(String value) => setField<String>('trigger', value);

  int get targetValue => getField<int>('target_value')!;
  set targetValue(int value) => setField<int>('target_value', value);

  int get rewardPoints => getField<int>('reward_points')!;
  set rewardPoints(int value) => setField<int>('reward_points', value);

  DateTime? get insertedAt => getField<DateTime>('inserted_at');
  set insertedAt(DateTime? value) => setField<DateTime>('inserted_at', value);

  bool? get archived => getField<bool>('archived');
  set archived(bool? value) => setField<bool>('archived', value);
}
