import 'package:cloud_firestore/cloud_firestore.dart';

import 'auth.dart';

class Database {
  static final db = FirebaseFirestore.instance;

  static Future<DocumentSnapshot<Map<String, dynamic>>> currentProfile() async {
    final id = Auth.instance.currentUser?.uid;
    return await db.collection('profiles').doc(id).get();
  }

  static Future<void> createProfile(Map<String, dynamic> updates) async {
    final id = Auth.instance.currentUser?.uid;
    await db.collection('profiles').doc(id).set(updates);
  }

  static Future<void> updateProfile(Map<String, dynamic> updates) async {
    await db
        .collection('profiles')
        .doc(Auth.instance.currentUser?.uid)
        .update(updates);
  }

  // static Stream<QuerySnapshot> undoneTasks() {
  //   return db
  //       .collection('tasks')
  //       .where('completed', isEqualTo: false)
  //       .snapshots();
  // }
}
