// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!
import 'package:supabase_flutter/supabase_flutter.dart';

Future<String?> resetPassword(String? newPassword) async {
  try {
    await SupaFlow.client.auth
        .updateUser(UserAttributes(password: newPassword));

    // Return null if the user has successfully reset their password
    return null;
  } catch (error) {
    // Handle errors if needed
    print('Error: $error');

    // Return the error as to why reset password failed
    return error.toString();
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
