import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/empty_list/empty_list/empty_list_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/u_i_components/side_nav_main/side_nav_main_widget.dart';
import 'main_notifications_widget.dart' show MainNotificationsWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainNotificationsModel extends FlutterFlowModel<MainNotificationsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNav_Main component.
  late SideNavMainModel sideNavMainModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {
    sideNavMainModel = createModel(context, () => SideNavMainModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavMainModel.dispose();
    tabBarController?.dispose();
  }
}
