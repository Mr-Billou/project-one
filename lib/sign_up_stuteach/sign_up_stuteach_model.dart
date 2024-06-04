import '/flutter_flow/flutter_flow_util.dart';
import 'sign_up_stuteach_widget.dart' show SignUpStuteachWidget;
import 'package:flutter/material.dart';

class SignUpStuteachModel extends FlutterFlowModel<SignUpStuteachWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode1;
  TextEditingController? emailAddressTextController1;
  String? Function(BuildContext, String?)? emailAddressTextController1Validator;
  // State field(s) for FullName widget.
  FocusNode? fullNameFocusNode1;
  TextEditingController? fullNameTextController1;
  String? Function(BuildContext, String?)? fullNameTextController1Validator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode1;
  TextEditingController? passwordTextController1;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? passwordTextController1Validator;
  // State field(s) for ConfirmPassword widget.
  FocusNode? confirmPasswordFocusNode1;
  TextEditingController? confirmPasswordTextController1;
  late bool confirmPasswordVisibility1;
  String? Function(BuildContext, String?)?
      confirmPasswordTextController1Validator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode2;
  TextEditingController? emailAddressTextController2;
  String? Function(BuildContext, String?)? emailAddressTextController2Validator;
  // State field(s) for FullName widget.
  FocusNode? fullNameFocusNode2;
  TextEditingController? fullNameTextController2;
  String? Function(BuildContext, String?)? fullNameTextController2Validator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode2;
  TextEditingController? passwordTextController2;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)? passwordTextController2Validator;
  // State field(s) for ConfirmPassword widget.
  FocusNode? confirmPasswordFocusNode2;
  TextEditingController? confirmPasswordTextController2;
  late bool confirmPasswordVisibility2;
  String? Function(BuildContext, String?)?
      confirmPasswordTextController2Validator;

  @override
  void initState(BuildContext context) {
    passwordVisibility1 = false;
    confirmPasswordVisibility1 = false;
    passwordVisibility2 = false;
    confirmPasswordVisibility2 = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    emailAddressFocusNode1?.dispose();
    emailAddressTextController1?.dispose();

    fullNameFocusNode1?.dispose();
    fullNameTextController1?.dispose();

    passwordFocusNode1?.dispose();
    passwordTextController1?.dispose();

    confirmPasswordFocusNode1?.dispose();
    confirmPasswordTextController1?.dispose();

    emailAddressFocusNode2?.dispose();
    emailAddressTextController2?.dispose();

    fullNameFocusNode2?.dispose();
    fullNameTextController2?.dispose();

    passwordFocusNode2?.dispose();
    passwordTextController2?.dispose();

    confirmPasswordFocusNode2?.dispose();
    confirmPasswordTextController2?.dispose();
  }

  /// Action blocks.
  Future ta(BuildContext context) async {}
}
