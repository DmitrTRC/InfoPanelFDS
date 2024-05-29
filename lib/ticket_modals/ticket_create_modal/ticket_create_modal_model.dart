import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/ticket_modals/create_ticket_base/create_ticket_base_widget.dart';
import 'dart:math';
import 'ticket_create_modal_widget.dart' show TicketCreateModalWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TicketCreateModalModel extends FlutterFlowModel<TicketCreateModalWidget> {
  ///  Local state fields for this component.

  List<DocumentReference> users = [];
  void addToUsers(DocumentReference item) => users.add(item);
  void removeFromUsers(DocumentReference item) => users.remove(item);
  void removeAtIndexFromUsers(int index) => users.removeAt(index);
  void insertAtIndexInUsers(int index, DocumentReference item) =>
      users.insert(index, item);
  void updateUsersAtIndex(int index, Function(DocumentReference) updateFn) =>
      users[index] = updateFn(users[index]);

  ///  State fields for stateful widgets in this component.

  // Model for Create_Ticket_Base component.
  late CreateTicketBaseModel createTicketBaseModel;

  @override
  void initState(BuildContext context) {
    createTicketBaseModel = createModel(context, () => CreateTicketBaseModel());
  }

  @override
  void dispose() {
    createTicketBaseModel.dispose();
  }
}
