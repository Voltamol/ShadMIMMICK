import 'package:flutter/material.dart';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;

class UploadScreenshot extends StatefulWidget {
  const UploadScreenshot({super.key});

  @override
  _UploadScreenshotState createState() => _UploadScreenshotState();
}

class _UploadScreenshotState extends State<UploadScreenshot> {
  File? _selectedImage;

  Future<void> upload() async {
    // Select a file
    FilePickerResult? result = await FilePicker.platform.pickFiles();

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
      final url =
          'http://192.168.43.191:5000/api/problem_screenshot_list/$problemId';
      var request = http.MultipartRequest('POST', Uri.parse(url));
      request.files.add(
          http.MultipartFile.fromBytes('image', fileBytes, filename: fileName));

      // Optionally send the request here if needed
      // var response = await request.send();
      // Handle the response as necessary

      // Update the state to show the selected image
      setState(() {
        _selectedImage = file; // Store the picked image
      });
    } else {
      // User canceled the file picking
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
              onTap: upload,
              child: Icon(
                Icons.upload,
                color: Theme.of(context).colorScheme.primary,
              )),
        ],
      ),
    );
  }
}
