import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firestore.g.dart';

/// Firestore instance
@Riverpod(keepAlive: true)
FirebaseFirestore firestore(FirestoreRef ref) {
  throw UnimplementedError('firestore');
}

/// Firestore Network
List<Override> firestoreNetworkProviders({
  required FirebaseFirestore firestore,
}) =>
    <Override>[
      firestoreProvider.overrideWithValue(firestore),
      // firestoreQuestDaoProvider,
    ];
