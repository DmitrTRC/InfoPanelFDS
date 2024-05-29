import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/u_i_components/assign_user/assign_user_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'create_ticket_base_widget.dart' show CreateTicketBaseWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateTicketBaseModel extends FlutterFlowModel<CreateTicketBaseWidget> {
  ///  Local state fields for this component.

  List<DocumentReference> assignUser = [];
  void addToAssignUser(DocumentReference item) => assignUser.add(item);
  void removeFromAssignUser(DocumentReference item) => assignUser.remove(item);
  void removeAtIndexFromAssignUser(int index) => assignUser.removeAt(index);
  void insertAtIndexInAssignUser(int index, DocumentReference item) =>
      assignUser.insert(index, item);
  void updateAssignUserAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      assignUser[index] = updateFn(assignUser[index]);

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for projectName widget.
  FocusNode? projectNameFocusNode;
  TextEditingController? projectNameTextController;
  String? Function(BuildContext, String?)? projectNameTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for DropDown_Desktop widget.
  String? dropDownDesktopValue;
  FormFieldController<String>? dropDownDesktopValueController;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    projectNameFocusNode?.dispose();
    projectNameTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
