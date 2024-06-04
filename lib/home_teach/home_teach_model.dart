import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'home_teach_widget.dart' show HomeTeachWidget;
import 'package:flutter/material.dart';

class HomeTeachModel extends FlutterFlowModel<HomeTeachWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Year widget.
  String? yearValue;
  FormFieldController<String>? yearValueController;
  // State field(s) for Speciality widget.
  String? specialityValue;
  FormFieldController<String>? specialityValueController;
  // State field(s) for Semestre widget.
  String? semestreValue;
  FormFieldController<String>? semestreValueController;
  // State field(s) for Module widget.
  String? moduleValue;
  FormFieldController<String>? moduleValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
