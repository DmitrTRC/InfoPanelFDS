import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/dropdowns/dropdown_task/dropdown_task_widget.dart';
import '/empty_list/empty_list/empty_list_widget.dart';
import '/empty_list/empty_list_tasks/empty_list_tasks_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/ticket_modals/ticket_view_modal/ticket_view_modal_widget.dart';
import '/u_i_components/side_nav_main/side_nav_main_widget.dart';
import '/u_i_components/user_info_top_bar/user_info_top_bar_widget.dart';
import 'dart:math';
import 'main_dashboard_widget.dart' show MainDashboardWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainDashboardModel extends FlutterFlowModel<MainDashboardWidget> {
  ///  State fields for stateful widgets in this page.

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
    sideNavMainModel.dispose();
    userInfoTopBarModel.dispose();
  }
}
