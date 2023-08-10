import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

failedSnackbar({required BuildContext context, required String message}){

  final materialBanner = SnackBar(
    /// need to set following properties for best effect of awesome_snackbar_content
    elevation: 0,
    backgroundColor: Colors.transparent,
    behavior: SnackBarBehavior.floating,


    content: AwesomeSnackbarContent(
      title: 'Failed',
      message:
      message,

      contentType: ContentType.failure,
      // to configure for material banner

    ),

  );

  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(materialBanner);

}