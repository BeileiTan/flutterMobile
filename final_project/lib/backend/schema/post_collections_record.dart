import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostCollectionsRecord extends FirestoreRecord {
  PostCollectionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "product_title" field.
  String? _productTitle;
  String get productTitle => _productTitle ?? '';
  bool hasProductTitle() => _productTitle != null;

  // "product_price" field.
  double? _productPrice;
  double get productPrice => _productPrice ?? 0.0;
  bool hasProductPrice() => _productPrice != null;

  // "product_description" field.
  String? _productDescription;
  String get productDescription => _productDescription ?? '';
  bool hasProductDescription() => _productDescription != null;

  // "photo_url" field.
  List<String>? _photoUrl;
  List<String> get photoUrl => _photoUrl ?? const [];
  bool hasPhotoUrl() => _photoUrl != null;

  // "shos_size" field.
  String? _shosSize;
  String get shosSize => _shosSize ?? '';
  bool hasShosSize() => _shosSize != null;

  void _initializeFields() {
    _productTitle = snapshotData['product_title'] as String?;
    _productPrice = castToType<double>(snapshotData['product_price']);
    _productDescription = snapshotData['product_description'] as String?;
    _photoUrl = getDataList(snapshotData['photo_url']);
    _shosSize = snapshotData['shos_size'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('post_collections');

  static Stream<PostCollectionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostCollectionsRecord.fromSnapshot(s));

  static Future<PostCollectionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostCollectionsRecord.fromSnapshot(s));

  static PostCollectionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PostCollectionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostCollectionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostCollectionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostCollectionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostCollectionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostCollectionsRecordData({
  String? productTitle,
  double? productPrice,
  String? productDescription,
  String? shosSize,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'product_title': productTitle,
      'product_price': productPrice,
      'product_description': productDescription,
      'shos_size': shosSize,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostCollectionsRecordDocumentEquality
    implements Equality<PostCollectionsRecord> {
  const PostCollectionsRecordDocumentEquality();

  @override
  bool equals(PostCollectionsRecord? e1, PostCollectionsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.productTitle == e2?.productTitle &&
        e1?.productPrice == e2?.productPrice &&
        e1?.productDescription == e2?.productDescription &&
        listEquality.equals(e1?.photoUrl, e2?.photoUrl) &&
        e1?.shosSize == e2?.shosSize;
  }

  @override
  int hash(PostCollectionsRecord? e) => const ListEquality().hash([
        e?.productTitle,
        e?.productPrice,
        e?.productDescription,
        e?.photoUrl,
        e?.shosSize
      ]);

  @override
  bool isValidKey(Object? o) => o is PostCollectionsRecord;
}
