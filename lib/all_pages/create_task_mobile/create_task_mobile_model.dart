import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/ticket_modals/create_ticket_base/create_ticket_base_widget.dart';
import 'create_task_mobile_widget.dart' show CreateTaskMobileWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateTaskMobileModel extends FlutterFlowModel<CreateTaskMobileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Create_Ticket_Base component.
  late CreateTicketBaseModel createTicketBaseModel;

  @override
  void initState(BuildContext context) {
    createTicketBaseModel = createModel(context, () => CreateTicketBaseModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    createTicketBaseModel.dispose();
  }
}
