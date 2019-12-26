import 'package:flutter/material.dart';
import 'DropdownDialogFormField.dart';
import 'Field.dart';

class DropdownFormField extends StatefulWidget {
  final Field field;
  DropdownFormField(this.field);
  @override
  _DropdownFormFieldState createState() => _DropdownFormFieldState(field);
}

class _DropdownFormFieldState extends State<DropdownFormField> {
  final Field field;
  String selectedOption;
  _DropdownFormFieldState(this.field);
  @override
  Widget build(BuildContext context) {
    selectedOption = 'a';
    return GestureDetector(
      // onPressed: showDialog(
      //   context: context,
      //   builder: (BuildContext context) => DropdownDialogFormField(field)
      // ),
      child: Column(
        children: <Widget>[
          Text(field.title),
          Row(
            children: <Widget>[
              Text(
                selectedOption != '' ? selectedOption : 
                  ((field.defaultValue != '') ? field.defaultValue : field.options[0])
              ),
              Icon(Icons.arrow_drop_down),
            ],
          )
        ],
      ),
    );
  }
}