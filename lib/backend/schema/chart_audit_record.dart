import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'schema_util.dart';
import 'serializers.dart';

part 'chart_audit_record.g.dart';

abstract class ChartAuditRecord
    implements Built<ChartAuditRecord, ChartAuditRecordBuilder> {
  static Serializer<ChartAuditRecord> get serializer =>
      _$chartAuditRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'ID')
  BuiltList<int> get id;

  @nullable
  @BuiltValueField(wireName: 'Name')
  BuiltList<String> get name;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ChartAuditRecordBuilder builder) => builder
    ..id = ListBuilder()
    ..name = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ChartAudit');

  static Stream<ChartAuditRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ChartAuditRecord._();
  factory ChartAuditRecord([void Function(ChartAuditRecordBuilder) updates]) =
      _$ChartAuditRecord;
}

Map<String, dynamic> createChartAuditRecordData() => serializers.serializeWith(
    ChartAuditRecord.serializer,
    ChartAuditRecord((c) => c
      ..id = null
      ..name = null));

ChartAuditRecord get dummyChartAuditRecord {
  final builder = ChartAuditRecordBuilder()
    ..id = ListBuilder([dummyInteger, dummyInteger])
    ..name = ListBuilder([dummyString, dummyString]);
  return builder.build();
}

List<ChartAuditRecord> createDummyChartAuditRecord({int count}) =>
    List.generate(count, (_) => dummyChartAuditRecord);
