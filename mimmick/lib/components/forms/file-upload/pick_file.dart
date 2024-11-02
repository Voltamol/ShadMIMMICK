import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
//import 'package:hive/hive.dart';
import 'package:path/path.dart' as path;
import 'package:http/http.dart' as http;

void upload() async {
  
// Select a file
  FilePickerResult? result = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: ['jpg', 'jpeg', 'png','gif','heic'],
  );

  if (result != null) {
    File file = File(result.files.single.path!);
    String fileName = path.basename(file.path);
    if (kDebugMode) {
      print(fileName);
    }
    // Read the file as bytes
    List<int> fileBytes = await file.readAsBytes();
    final problemIds = Hive.box("problem_ids");
    final problemId = problemIds.get('id');
    // Send the file to the server
    final url = 'http://192.168.43.191:5000/api/problem_screenshot_list/$problemId';
    var request = http.MultipartRequest('POST', Uri.parse(url));
    request.files.add(
        http.MultipartFile.fromBytes('image', fileBytes, filename: fileName));

    //preview the image
    //...
    // Send the request
    // var response = await request.send();
    // if (response.statusCode == 200) {
    //   // File uploaded successfully
    // } else {
    //   // Handle the error
    // }
  } else {
    // User canceled the file picking
  }
}
