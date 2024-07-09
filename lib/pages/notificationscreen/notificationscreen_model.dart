import '/flutter_flow/flutter_flow_util.dart';
import 'notificationscreen_widget.dart' show NotificationscreenWidget;
import 'package:flutter/material.dart';

class NotificationscreenModel
    extends FlutterFlowModel<NotificationscreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
