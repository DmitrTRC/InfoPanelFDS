import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

List<DocumentReference>? addMultipleUsersToList(
  DocumentReference? userOne,
  DocumentReference? userTwo,
) {
  // take the two users docs and add them to a list of user docs.
  List<DocumentReference>? userList = [];
  if (userOne != null) {
    userList.add(userOne);
  }
  if (userTwo != null) {
    userList.add(userTwo);
  }
  return userList.isEmpty ? null : userList;
}
