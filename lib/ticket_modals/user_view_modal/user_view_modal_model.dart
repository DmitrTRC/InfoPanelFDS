import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/ticket_modals/user_other_base/user_other_base_widget.dart';
import 'dart:math';
import 'user_view_modal_widget.dart' show UserViewModalWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserViewModalModel extends FlutterFlowModel<UserViewModalWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for user_OtherBase component.
  late UserOtherBaseModel userOtherBaseModel;

  @override
  void initState(BuildContext context) {
    userOtherBaseModel = createModel(context, () => UserOtherBaseModel());
  }

  @override
  void dispose() {
    userOtherBaseModel.dispose();
  }
}
