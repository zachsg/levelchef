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
        final f = await _scaleFileDown(imageX, file);
        final avatarRef = _storage.child('$_avatarsPath${file.name}');
        await avatarRef.putFile(f);
        final url = await avatarRef.getDownloadURL();

        return url;
      }
    } catch (e) {
      // TODO: Handle error.
      print(e);
    }

    return '';
  }

  static Future<bool> saveRecipePhoto(Image image) async {
    try {
      // TODO: Handle recipe photo saving
      return true;
    } catch (e) {
      return false;
    }
  }

  static Future<File> _scaleFileDown(Image image, XFile file) async {
    final thumbnail = copyResize(image, width: 800);

    final extension = file.path.split('.').last;
    final reducedPath = '${file.path}reduced.$extension';

    File f = await File(reducedPath).writeAsBytes(encodePng(thumbnail));

    return f;
  }
}
