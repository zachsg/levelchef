import 'package:cloud_firestore/cloud_firestore.dart';

import 'auth.dart';

class Database {
  static final db = FirebaseFirestore.instance;

  static const profilesCollection = 'profiles';
  static const recipesCollection = 'recipes';

  static Future<DocumentSnapshot<Map<String, dynamic>>> currentProfile() async {
    final id = Auth.instance.currentUser?.uid;
    return await db.collection(profilesCollection).doc(id).get();
  }

  static Future<void> createProfile(Map<String, dynamic> updates) async {
    final id = Auth.instance.currentUser?.uid;
    await db.collection(profilesCollection).doc(id).set(updates);
  }

  static Future<void> updateProfile(Map<String, dynamic> updates) async {
    await db
        .collection(profilesCollection)
        .doc(Auth.instance.currentUser?.uid)
        .update(updates);
  }

  static Future<void> createRecipe(
      String id, Map<String, dynamic> updates) async {
    await db.collection(recipesCollection).doc(id).set(updates);
  }

  static Future<void> updateRecipe(
      String id, Map<String, dynamic> updates) async {
    await db.collection(recipesCollection).doc(id).update(updates);
  }

  static Stream<QuerySnapshot> createdRecipes() {
    final id = Auth.instance.currentUser?.uid;

    return db
        .collection(recipesCollection)
        .where('owner_id', isEqualTo: id)
        .snapshots();
  }

  // static Stream<QuerySnapshot> undoneTasks() {
  //   return db
  //       .collection('tasks')
  //       .where('completed', isEqualTo: false)
  //       .snapshots();
  // }
}
