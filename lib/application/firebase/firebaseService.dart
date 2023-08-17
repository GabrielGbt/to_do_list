// ignore_for_file: file_names

/* import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<Object?> fetchDataWithId(String documentId) async {
    try {
      final DocumentSnapshot snapshot =
          await _firestore.collection('your_collection').doc(documentId).get();
      if (snapshot.exists) {
        return snapshot.data();
      } else {
        return null; // Document with the specified ID does not exist
      }
    } catch (e) {
      // Handle errors here.
      return null;
    }
  }
}
  */