import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/ticket_modals/user_other_base/user_other_base_widget.dart';
import 'profile_page_other_widget.dart' show ProfilePageOtherWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfilePageOtherModel extends FlutterFlowModel<ProfilePageOtherWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for user_OtherBase component.
  late UserOtherBaseModel userOtherBaseModel;

  @override
  void initState(BuildContext context) {
    userOtherBaseModel = createModel(context, () => UserOtherBaseModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    userOtherBaseModel.dispose();
  }
}
