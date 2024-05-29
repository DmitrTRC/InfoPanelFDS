import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/dropdowns/dropdown_user/dropdown_user_widget.dart';
import '/empty_list/empty_list_generic/empty_list_generic_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/ticket_modals/user_view_modal/user_view_modal_widget.dart';
import '/u_i_components/side_nav_main/side_nav_main_widget.dart';
import '/u_i_components/user_info_top_bar/user_info_top_bar_widget.dart';
import 'dart:async';
import 'main_members_widget.dart' show MainMembersWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class MainMembersModel extends FlutterFlowModel<MainMembersWidget> {
  ///  Local state fields for this page.

  int selectedPage = 2;

  bool searchActive = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNav_Main component.
  late SideNavMainModel sideNavMainModel;
  // Model for user_Info_topBar component.
  late UserInfoTopBarModel userInfoTopBarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<UsersRecord> simpleSearchResults = [];
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  List<String>? get choiceChipsValues => choiceChipsValueController?.value;
  set choiceChipsValues(List<String>? val) =>
      choiceChipsValueController?.value = val;
  Completer<List<UsersRecord>>? firestoreRequestCompleter;
  // Model for empty_List_Generic component.
  late EmptyListGenericModel emptyListGenericModel;

  @override
  void initState(BuildContext context) {
    sideNavMainModel = createModel(context, () => SideNavMainModel());
    userInfoTopBarModel = createModel(context, () => UserInfoTopBarModel());
    emptyListGenericModel = createModel(context, () => EmptyListGenericModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavMainModel.dispose();
    userInfoTopBarModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    emptyListGenericModel.dispose();
  }

  /// Additional helper methods.
  Future waitForFirestoreRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = firestoreRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
