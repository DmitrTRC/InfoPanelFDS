import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/u_i_components/edit_company/edit_company_widget.dart';
import '/u_i_components/side_nav_main/side_nav_main_widget.dart';
import '/u_i_components/user_info_top_bar/user_info_top_bar_widget.dart';
import 'dart:math';
import '/flutter_flow/custom_functions.dart' as functions;
import 'main_profile_widget.dart' show MainProfileWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainProfileModel extends FlutterFlowModel<MainProfileWidget> {
  ///  Local state fields for this page.

  int selectedPage = 2;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNav_Main component.
  late SideNavMainModel sideNavMainModel;
  // Model for user_Info_topBar component.
  late UserInfoTopBarModel userInfoTopBarModel;

  @override
  void initState(BuildContext context) {
    sideNavMainModel = createModel(context, () => SideNavMainModel());
    userInfoTopBarModel = createModel(context, () => UserInfoTopBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavMainModel.dispose();
    userInfoTopBarModel.dispose();
  }
}
