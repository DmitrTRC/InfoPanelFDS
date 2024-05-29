import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/ticket_modals/task_details/task_details_widget.dart';
import 'task_details_mobile_widget.dart' show TaskDetailsMobileWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TaskDetailsMobileModel extends FlutterFlowModel<TaskDetailsMobileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for task_Details component.
  late TaskDetailsModel taskDetailsModel;

  @override
  void initState(BuildContext context) {
    taskDetailsModel = createModel(context, () => TaskDetailsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    taskDetailsModel.dispose();
  }
}
