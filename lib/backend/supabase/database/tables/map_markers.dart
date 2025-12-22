import '../database.dart';

class MapMarkersTable extends SupabaseTable<MapMarkersRow> {
  @override
  String get tableName => 'map_markers';

  @override
  MapMarkersRow createRow(Map<String, dynamic> data) => MapMarkersRow(data);
}

class MapMarkersRow extends SupabaseDataRow {
  MapMarkersRow(super.data);

  @override
  SupabaseTable get table => MapMarkersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  double get xPosition => getField<double>('x_position')!;
  set xPosition(double value) => setField<double>('x_position', value);

  double get yPosition => getField<double>('y_position')!;
  set yPosition(double value) => setField<double>('y_position', value);

  String? get iconType => getField<String>('icon_type');
  set iconType(String? value) => setField<String>('icon_type', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
