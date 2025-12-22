import '../database.dart';

class AchievementDefsTable extends SupabaseTable<AchievementDefsRow> {
  @override
  String get tableName => 'achievement_defs';

  @override
  AchievementDefsRow createRow(Map<String, dynamic> data) =>
      AchievementDefsRow(data);
}

class AchievementDefsRow extends SupabaseDataRow {
  AchievementDefsRow(super.data);

  @override
  SupabaseTable get table => AchievementDefsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get triggerType => getField<String>('trigger_type')!;
  set triggerType(String value) => setField<String>('trigger_type', value);

  int get targetValue => getField<int>('target_value')!;
  set targetValue(int value) => setField<int>('target_value', value);

  int? get rewardXp => getField<int>('reward_xp');
  set rewardXp(int? value) => setField<int>('reward_xp', value);

  String get rewardType => getField<String>('reward_type')!;
  set rewardType(String value) => setField<String>('reward_type', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  String? get rewardCosmeticId => getField<String>('reward_cosmetic_id');
  set rewardCosmeticId(String? value) =>
      setField<String>('reward_cosmetic_id', value);
}
