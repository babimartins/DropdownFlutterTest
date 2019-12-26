import 'package:flutter/material.dart';
import 'package:rhim_gatherer_mobile/DropdownFormField.dart';
import 'package:rhim_gatherer_mobile/Field.dart';

void main() {
  Field field = Field("id", "type", "title", "defaultValue", true, ["options"]);
  runApp(
    MaterialApp(
      title: 'a',
      home: Container(
        child: DropdownFormField(field),
      ),
    ),
  );
}