import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';

class WriteData extends StatefulWidget {
  const WriteData({Key? key}) : super(key: key);

  @override
  State<WriteData> createState() => _WriteDataState();
}

class _WriteDataState extends State<WriteData> {
  final dataaa=TextEditingController();
  final _course = GlobalKey<FormState>();
  String? name;
  String?branch;

  writedata() async {
    _course.currentState!.save();
    var databaseUrl = "https://demo1-5acd4-default-rtdb.firebaseio.com/" +
        "courseDetails.json";
    try {
      final response = await http.post(Uri.parse(databaseUrl),
          body: json.encode({"name": name,"branch":branch}));
    } catch (error) {
      throw error;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Write Data'),
      ),
      body: Column(children: [
        Form(
          key: _course,
          child: Column(
            children: [
              TextFormField(
                decoration:
                    InputDecoration(hintText: 'Enter course', labelText: 'Course'),
                onSaved: (course) {
                  name = course;
                },
              ),
              TextFormField(
                decoration:
                InputDecoration(hintText: 'Enter course', labelText: 'day'),
                onSaved: (day) {
                  branch = day;
                },
              ),
            ],
          ),
        ),

        TextButton(
            onPressed: () {
              writedata();
            },
            child: Text('submit'))
      ]),
    );
  }
}
