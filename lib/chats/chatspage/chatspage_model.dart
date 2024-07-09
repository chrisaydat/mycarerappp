import '/flutter_flow/flutter_flow_util.dart';
import 'chatspage_widget.dart' show ChatspageWidget;
import 'package:flutter/material.dart';

class ChatspageModel extends FlutterFlowModel<ChatspageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
