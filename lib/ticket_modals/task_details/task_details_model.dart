import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/empty_list/empty_list_generic/empty_list_generic_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'task_details_widget.dart' show TaskDetailsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TaskDetailsModel extends FlutterFlowModel<TaskDetailsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for scrolling widget.
  ScrollController? scrolling;
  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    scrolling = ScrollController();
    listViewController = ScrollController();
  }

  @override
  void dispose() {
    scrolling?.dispose();
    listViewController?.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
