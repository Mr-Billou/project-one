import '/flutter_flow/flutter_flow_util.dart';
import 'certificate_copy_widget.dart' show CertificateCopyWidget;
import 'package:flutter/material.dart';

class CertificateCopyModel extends FlutterFlowModel<CertificateCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
