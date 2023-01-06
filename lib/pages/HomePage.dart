import 'package:flutter/material.dart';
import 'add_student_page.dart';
import 'list_student_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Flutter crud application"),
          ElevatedButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => AddStudentPage(),
              ),
            ),
            child: Text("add"),
          )
        ],
      )),
      body:ListStudentPage(),
    );
  }
}
