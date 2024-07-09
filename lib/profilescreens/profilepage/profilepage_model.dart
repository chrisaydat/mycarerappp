import '/flutter_flow/flutter_flow_util.dart';
import 'profilepage_widget.dart' show ProfilepageWidget;
import 'package:flutter/material.dart';

class ProfilepageModel extends FlutterFlowModel<ProfilepageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
