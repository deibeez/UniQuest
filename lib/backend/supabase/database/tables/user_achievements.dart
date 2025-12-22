import '../database.dart';

class UserAchievementsTable extends SupabaseTable<UserAchievementsRow> {
  @override
  String get tableName => 'user_achievements';

  @override
  UserAchievementsRow createRow(Map<String, dynamic> data) =>
      UserAchievementsRow(data);
}

class UserAchievementsRow extends SupabaseDataRow {
  UserAchievementsRow(super.data);

  @override
  SupabaseTable get table => UserAchievementsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get achievementId => getField<String>('achievement_id')!;
  set achievementId(String value) => setField<String>('achievement_id', value);

  int? get progress => getField<int>('progress');
  set progress(int? value) => setField<int>('progress', value);

  bool? get isDone => getField<bool>('is_done');
  set isDone(bool? value) => setField<bool>('is_done', value);

  DateTime? get unlockedAt => getField<DateTime>('unlocked_at');
  set unlockedAt(DateTime? value) => setField<DateTime>('unlocked_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get rewardType => getField<String>('reward_type');
  set rewardType(String? value) => setField<String>('reward_type', value);

  int? get rewardXp => getField<int>('reward_xp');
  set rewardXp(int? value) => setField<int>('reward_xp', value);
}
