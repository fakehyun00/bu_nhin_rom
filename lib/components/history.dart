import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Lịch sử',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            Divider(
              thickness: 1.5,
              color: Colors.grey,
            )
          ],
        ),
        Padding(
            padding: EdgeInsets.all(10),
            child: Text(
                'To generate HTML output, see package html/template, which has the same interface as this package but automatically secures HTML output against certain attacks.')),
        Padding(
            padding: EdgeInsets.all(10),
            child: Text(
                'Templates are executed by applying them to a data structure. Annotations in the template refer to elements of the data structure (typically a field of a struct or a key in a map) to control execution and derive values to be displayed. Execution of the template walks the structure and sets the cursor, represented by a period \'.\' and called "dot", to the value at the current location in the structure as execution proceeds.')),
        Padding(
            padding: EdgeInsets.all(10),
            child: Text(
                'To generate HTML output, see package html/template, which has the same interface as this package but automatically secures HTML output against certain attacks.')),
        Padding(
            padding: EdgeInsets.all(10),
            child: Text(
                'Templates are executed by applying them to a data structure. Annotations in the template refer to elements of the data structure (typically a field of a struct or a key in a map) to control execution and derive values to be displayed. Execution of the template walks the structure and sets the cursor, represented by a period \'.\' and called "dot", to the value at the current location in the structure as execution proceeds.')),
        Padding(
            padding: EdgeInsets.all(10),
            child: Text(
                'To generate HTML output, see package html/template, which has the same interface as this package but automatically secures HTML output against certain attacks.')),
        Padding(
            padding: EdgeInsets.all(10),
            child: Text(
                'Templates are executed by applying them to a data structure. Annotations in the template refer to elements of the data structure (typically a field of a struct or a key in a map) to control execution and derive values to be displayed. Execution of the template walks the structure and sets the cursor, represented by a period \'.\' and called "dot", to the value at the current location in the structure as execution proceeds.')),
        Padding(
            padding: EdgeInsets.all(10),
            child: Text(
                'To generate HTML output, see package html/template, which has the same interface as this package but automatically secures HTML output against certain attacks.')),
        Padding(
            padding: EdgeInsets.all(10),
            child: Text(
                'Templates are executed by applying them to a data structure. Annotations in the template refer to elements of the data structure (typically a field of a struct or a key in a map) to control execution and derive values to be displayed. Execution of the template walks the structure and sets the cursor, represented by a period \'.\' and called "dot", to the value at the current location in the structure as execution proceeds.')),
      ],
    );
  }
}
