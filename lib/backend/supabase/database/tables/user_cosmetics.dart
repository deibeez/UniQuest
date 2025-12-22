import '../database.dart';

class UserCosmeticsTable extends SupabaseTable<UserCosmeticsRow> {
  @override
  String get tableName => 'user_cosmetics';

  @override
  UserCosmeticsRow createRow(Map<String, dynamic> data) =>
      UserCosmeticsRow(data);
}

class UserCosmeticsRow extends SupabaseDataRow {
  UserCosmeticsRow(super.data);

  @override
  SupabaseTable get table => UserCosmeticsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get cosmeticId => getField<String>('cosmetic_id')!;
  set cosmeticId(String value) => setField<String>('cosmetic_id', value);

  DateTime get unlockedAt => getField<DateTime>('unlocked_at')!;
  set unlockedAt(DateTime value) => setField<DateTime>('unlocked_at', value);

  String get type => getField<String>('type')!;
  set type(String value) => setField<String>('type', value);

  String get imageUrl => getField<String>('image_url')!;
  set imageUrl(String value) => setField<String>('image_url', value);
}
