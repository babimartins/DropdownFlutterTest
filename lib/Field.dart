class Field {
  String id;
  String type;
  String title;
  dynamic defaultValue;
  bool mandatory;
  List<dynamic> options;

  Field(
      this.id,
      this.type,
      this.title,
      this.defaultValue,
      this.mandatory,
      this.options);
}
