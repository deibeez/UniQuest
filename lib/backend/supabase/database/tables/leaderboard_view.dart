import '../database.dart';

class LeaderboardViewTable extends SupabaseTable<LeaderboardViewRow> {
  @override
  String get tableName => 'leaderboard_view';

  @override
  LeaderboardViewRow createRow(Map<String, dynamic> data) =>
      LeaderboardViewRow(data);
}

class LeaderboardViewRow extends SupabaseDataRow {
  LeaderboardViewRow(super.data);

  @override
  SupabaseTable get table => LeaderboardViewTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String? get avatarUrl => getField<String>('avatar_url');
  set avatarUrl(String? value) => setField<String>('avatar_url', value);

  int? get totalPoints => getField<int>('total_points');
  set totalPoints(int? value) => setField<int>('total_points', value);

  String? get equippedNamecard => getField<String>('equipped_namecard');
  set equippedNamecard(String? value) =>
      setField<String>('equipped_namecard', value);

  String? get equippedBorder => getField<String>('equipped_border');
  set equippedBorder(String? value) =>
      setField<String>('equipped_border', value);

  String? get rankText => getField<String>('rank_text');
  set rankText(String? value) => setField<String>('rank_text', value);

  int? get numericRank => getField<int>('numeric_rank');
  set numericRank(int? value) => setField<int>('numeric_rank', value);
}
