import '../database.dart';

class CosmeticsTable extends SupabaseTable<CosmeticsRow> {
  @override
  String get tableName => 'cosmetics';

  @override
  CosmeticsRow createRow(Map<String, dynamic> data) => CosmeticsRow(data);
}

class CosmeticsRow extends SupabaseDataRow {
  CosmeticsRow(super.data);

  @override
  SupabaseTable get table => CosmeticsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get type => getField<String>('type')!;
  set type(String value) => setField<String>('type', value);

  String get imageUrl => getField<String>('image_url')!;
  set imageUrl(String value) => setField<String>('image_url', value);

  int get xpCost => getField<int>('xp_cost')!;
  set xpCost(int value) => setField<int>('xp_cost', value);

  bool get isActive => getField<bool>('is_active')!;
  set isActive(bool value) => setField<bool>('is_active', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  bool? get isDefault => getField<bool>('is_default');
  set isDefault(bool? value) => setField<bool>('is_default', value);
}
