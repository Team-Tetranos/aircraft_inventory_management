import 'package:aircraft_inventory_management/res/responsive_layout.dart';
import 'package:aircraft_inventory_management/views/signup_view/signup_view_desktop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../view_models/sign_up_view_model.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {

  SignupViewModel signupViewModel = SignupViewModel();


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: signupViewModel,
      child: Consumer<SignupViewModel>(
        builder: (context, svm, _) {
          return ResponsiveLayout(
              desktopBody: MySignUpViewDesktop(),
              tabletBody: MySignUpViewDesktop(),
              mobileBody: MySignUpViewDesktop()
          );
        }
      ),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    print('Dispose is called');
    signupViewModel.dispose();
    super.dispose();
  }
}
