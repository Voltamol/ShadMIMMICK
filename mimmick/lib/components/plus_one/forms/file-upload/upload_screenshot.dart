
import 'package:flutter/material.dart';
//import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mimmick/components/plus_one/forms/file-upload/pick_file.dart';

class UploadScreenshot extends StatelessWidget {
  const UploadScreenshot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: upload,
            child: const Text("Upload"),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Upload screenshot'),
          ),
          const SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              //notifySubscribers();
              //redirect to success page
            },
            child: Text(
              'skip and proceed',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          )
        ],
      ),
    ));
  }
}

Future<void> sendPushNotification(String message, playerIDs) async {
  final url = Uri.parse('https://onesignal.com/api/v1/notifications');
  final headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Basic YOUR_ONESIGNAL_REST_API_KEY',
  };
  final user = Hive.box("users");
  final problem = Hive.box("problem_ids");
  final userAlias = await user.get('alias');
  final problemId=await problem.get('id');
  String title = userAlias;
  final data = {
    'app_id': "0c7b98e6-3e85-4097-a6d9-01d672b7fad6",
    'include_player_ids': playerIDs,
    'contents': {
      'en': message,
    },
    'headings': {
      'en': "$title:$problemId",
    },
  };

  final response = await http.post(
    url,
    headers: headers,
    body: jsonEncode(data),
  );

  if (response.statusCode == 200) {
    if (kDebugMode) {
      print('Push notification sent successfully!');
    }
  } else {
    if (kDebugMode) {
      print(
          'Failed to send push notification: ${response.statusCode} - ${response.body}');
    }
  }
}

Future<void> notifySubscribers() async {
  final message = Hive.box("push_message");
  final dict = message.get('dict');
  final url = 'http://192.168.43.191:5000/api/getSubscribedUsers/${dict['category']}';
  final response =
      await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    Map userMap = jsonDecode(response.body);
    List userIDs = userMap["subscribed_users"];
    sendPushNotification(dict['message_body'], userIDs);
  } else {
    if (kDebugMode) {
      print("error:${response.statusCode} ");
    }
  }
}
