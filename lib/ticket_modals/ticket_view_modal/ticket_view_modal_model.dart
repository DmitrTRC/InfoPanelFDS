import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/ticket_modals/task_details/task_details_widget.dart';
import 'dart:math';
import 'ticket_view_modal_widget.dart' show TicketViewModalWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TicketViewModalModel extends FlutterFlowModel<TicketViewModalWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for task_Details component.
  late TaskDetailsModel taskDetailsModel;

  @override
  void initState(BuildContext context) {
    taskDetailsModel = createModel(context, () => TaskDetailsModel());
  }

  @override
  void dispose() {
    taskDetailsModel.dispose();
  }
}
