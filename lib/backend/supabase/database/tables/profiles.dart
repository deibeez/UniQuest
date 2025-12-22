import '../database.dart';

class ProfilesTable extends SupabaseTable<ProfilesRow> {
  @override
  String get tableName => 'profiles';

  @override
  ProfilesRow createRow(Map<String, dynamic> data) => ProfilesRow(data);
}

class ProfilesRow extends SupabaseDataRow {
  ProfilesRow(super.data);

  @override
  SupabaseTable get table => ProfilesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String? get avatarUrl => getField<String>('avatar_url');
  set avatarUrl(String? value) => setField<String>('avatar_url', value);

  int get xp => getField<int>('xp')!;
  set xp(int value) => setField<int>('xp', value);

  String get equippedNamecard => getField<String>('equipped_namecard')!;
  set equippedNamecard(String value) =>
      setField<String>('equipped_namecard', value);

  String get equippedBorder => getField<String>('equipped_border')!;
  set equippedBorder(String value) =>
      setField<String>('equipped_border', value);

  List<String> get unlockedCosmetics =>
      getListField<String>('unlocked_cosmetics');
  set unlockedCosmetics(List<String>? value) =>
      setListField<String>('unlocked_cosmetics', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  String? get fcmToken => getField<String>('fcm_token');
  set fcmToken(String? value) => setField<String>('fcm_token', value);

  String? get bio => getField<String>('bio');
  set bio(String? value) => setField<String>('bio', value);

  int? get totalAchievements => getField<int>('total_achievements');
  set totalAchievements(int? value) =>
      setField<int>('total_achievements', value);

  String? get backgroundImg => getField<String>('background_img');
  set backgroundImg(String? value) => setField<String>('background_img', value);

  bool get isAdmin => getField<bool>('isAdmin')!;
  set isAdmin(bool value) => setField<bool>('isAdmin', value);

  int? get taskStreak => getField<int>('task_streak');
  set taskStreak(int? value) => setField<int>('task_streak', value);

  DateTime? get lastTaskDone => getField<DateTime>('last_task_done');
  set lastTaskDone(DateTime? value) =>
      setField<DateTime>('last_task_done', value);

  String? get rank => getField<String>('rank');
  set rank(String? value) => setField<String>('rank', value);

  bool get onboardingCompleted => getField<bool>('onboarding_completed')!;
  set onboardingCompleted(bool value) =>
      setField<bool>('onboarding_completed', value);
}
