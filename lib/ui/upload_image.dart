import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../data/service/upload_api_service.dart';

class UploadFileToServer extends StatefulWidget {
  const UploadFileToServer({Key? key}) : super(key: key);

  @override
  State<UploadFileToServer> createState() => _UploadFileToServerState();
}

class _UploadFileToServerState extends State<UploadFileToServer> {
  String status = "";
  File? file;

  Future<File?> selectFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      return File(result.files.single.path!);
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 200,),
            file!=null? Container(
                height: 100,
                width: 100,
                child: Image.file(file!,height: 300,)): Container(height: 100,width: 100,color: Colors.grey,),
            Center(
              child: ElevatedButton(
                  onPressed: () async {
                    File? f = await selectFile();
                    if (f != null) {
                      file = f;
                      String st =
                      await UploadApiService.uploadProfileImage(file: f);
                      setState(() {
                        status = st;
                      });
                    }
                  },
                  child: const Text("Select file")),
            ),
            Center(child: ElevatedButton(onPressed: () {}, child: const Text("Upload  file"))),


          ],
        ),
      ),
    );
  }
}