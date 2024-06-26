import 'dart:io';

import 'package:image/image.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

class Storage {
  static final _storage = FirebaseStorage.instance.ref();
  static const _avatarsPath = 'avatars/';
  static const _recipesPath = 'recipes/';

  static Future<String> saveAvatar(XFile file) async {
    try {
      final imageX = decodeImage(File(file.path).readAsBytesSync());

      if (imageX != null) {
        final f = await _scaleImageDown(imageX, file);
        final avatarRef = _storage.child('$_avatarsPath${file.name}');
        await avatarRef.putFile(f);
        final url = await avatarRef.getDownloadURL();

        return url;
      }
    } catch (e) {
      // TODO: Handle error.
    }

    return '';
  }

  static Future<String> saveRecipePhoto(XFile file) async {
    try {
      final imageX = decodeImage(File(file.path).readAsBytesSync());

      if (imageX != null) {
        final f = await _scaleImageDown(imageX, file);
        final recipeRef = _storage.child('$_recipesPath${file.name}');
        await recipeRef.putFile(f);
        final url = await recipeRef.getDownloadURL();

        return url;
      }
    } catch (e) {
      // TODO: Handle error.
    }

    return '';
  }

  static Future<File> _scaleImageDown(Image image, XFile file) async {
    final thumbnail = copyResize(image, width: 800);

    final extension = file.path.split('.').last;
    final reducedPath = '${file.path}reduced.$extension';

    return await File(reducedPath).writeAsBytes(encodePng(thumbnail));
  }
}
