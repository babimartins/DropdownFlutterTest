import 'package:flutter/material.dart';
import 'Field.dart';

class DropdownDialogFormField extends StatefulWidget {
  final Field field;
  DropdownDialogFormField(this.field);
  @override
  _DropdownDialogFormFieldState createState() => _DropdownDialogFormFieldState(field);
}

class _DropdownDialogFormFieldState extends State<DropdownDialogFormField> {
  final Field field;
  _DropdownDialogFormFieldState(this.field);
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        children: <Widget>[
          Text(field.title),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ListView.builder(
                  itemCount: field.options.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(field.options[index])
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}