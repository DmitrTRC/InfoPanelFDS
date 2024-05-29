import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/dropdowns/dropdown_task/dropdown_task_widget.dart';
import '/empty_list/empty_list_tasks/empty_list_tasks_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/ticket_modals/task_details/task_details_widget.dart';
import '/ticket_modals/ticket_view_modal/ticket_view_modal_widget.dart';
import '/u_i_components/side_nav_main/side_nav_main_widget.dart';
import '/u_i_components/user_info_top_bar/user_info_top_bar_widget.dart';
import 'dart:math';
import '/flutter_flow/request_manager.dart';

import 'main_all_tasks_widget.dart' show MainAllTasksWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainAllTasksModel extends FlutterFlowModel<MainAllTasksWidget> {
  ///  Local state fields for this page.

  bool showDetails = false;

  ActivityRecord? activityRef;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNav_Main component.
  late SideNavMainModel sideNavMainModel;
  // Model for user_Info_topBar component.
  late UserInfoTopBarModel userInfoTopBarModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  List<String>? get choiceChipsValues => choiceChipsValueController?.value;
  set choiceChipsValues(List<String>? val) =>
      choiceChipsValueController?.value = val;
  // Model for task_Details component.
  late TaskDetailsModel taskDetailsModel;

  /// Query cache managers for this widget.

  final _activityOwnerManager = FutureRequestManager<UsersRecord>();
  Future<UsersRecord> activityOwner({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<UsersRecord> Function() requestFn,
  }) =>
      _activityOwnerManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearActivityOwnerCache() => _activityOwnerManager.clear();
  void clearActivityOwnerCacheKey(String? uniqueKey) =>
      _activityOwnerManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    sideNavMainModel = createModel(context, () => SideNavMainModel());
    userInfoTopBarModel = createModel(context, () => UserInfoTopBarModel());
    taskDetailsModel = createModel(context, () => TaskDetailsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavMainModel.dispose();
    userInfoTopBarModel.dispose();
    taskDetailsModel.dispose();

    /// Dispose query cache managers for this widget.

    clearActivityOwnerCache();
  }
}
