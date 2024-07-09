import '/flutter_flow/flutter_flow_util.dart';
import 'supportpage_widget.dart' show SupportpageWidget;
import 'package:flutter/material.dart';

class SupportpageModel extends FlutterFlowModel<SupportpageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
