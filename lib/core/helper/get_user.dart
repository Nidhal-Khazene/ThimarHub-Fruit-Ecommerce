import 'dart:convert';

import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/services/shared_preferences_singleton.dart';
import 'package:ecommerce_app/features/auth/data/models/user_model.dart';
import 'package:ecommerce_app/features/auth/domain/entities/user_entity.dart';

UserEntity? getUser() {
  final jsonData = SharedPreferencesSingleton.getString(kSaveDataSharedPref);

  if (jsonData == null || jsonData.isEmpty) {
    return null;
  }

  final decoded = jsonDecode(jsonData);

  if (decoded == null) return null;

  return UserModel.fromJson(decoded);
}
