import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Note extends StatefulWidget {
  const Note({super.key});

  @override
  State<Note> createState() => _NoteState();
}

class _NoteState extends State<Note> {
  final textController = TextEditingController();
  void addNewNote() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: TextField(
          controller: textController,
        ),
        actions: [
          TextButton(
              onPressed: () {
                saveNote();
                Navigator.pop(context);
              },
              child: Text("Save"))
        ],
      ),
    );
  }

  void saveNote() async {
    await Supabase.instance.client
        .from("notes")
        .insert({"body": textController.text});
  }

  final _notesStream =
      Supabase.instance.client.from("notes").stream(primaryKey: ["id"]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<List<Map<String, dynamic>>>(
        stream: _notesStream,
        builder: (context, snapshot) {
          //loading ...
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          //loaded ...
          final notes = snapshot.data!;
          return ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, index) {
                final note = notes[index];
                final noteText = note["body"];
                return Text(noteText);
              });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addNewNote,
        child: const Icon(Icons.add_reaction),
      ),
    );
  }
}
