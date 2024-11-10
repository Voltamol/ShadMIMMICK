import 'package:flutter/material.dart';

class Note extends StatefulWidget {
  const Note({super.key});

  @override
  State<Note> createState() => _NoteState();
}

class _NoteState extends State<Note> {
  void addNewNote(){
    showDialog(context: context, builder: (context) =>
      AlertDialog(
        content:TextField()
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}