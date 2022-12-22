
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class UploadApiService {
  static Future<String> uploadProfileImage({
    required File file,
  }) async {
    Dio dio = Dio();

    dio.options.headers = {
      "Authorization": "Token 3424160f7a50c1841ad90238c30e17b34007cef2",
      "Accept": "application/json"
    };

    String fileName = file.path.split('/').last;
    var myFileForm = await MultipartFile.fromFile(file.path, filename: fileName);
   print(fileName);
    FormData formData = FormData.fromMap({
      "avatar_image": myFileForm,
      "user_id": 5,
      "type_id": 1,
    });

    final Response response = await dio.post(
      "https://chronic.spai.uz/api/upload_user_avatar/",
      data: formData,
    );

    debugPrint('client-image-upload');
    debugPrint('${response.statusCode}');

    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      return response.data['status'];
    } else {
      throw Exception();
    }
  }
}