import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:taskmanger/data/model_class/network_response.dart';
import 'package:taskmanger/data/network_caller/network_caller.dart';
import 'package:taskmanger/data/utilities/urls.dart';
import 'package:taskmanger/ui/sceen/auths/email_varification_sceen.dart';
import 'package:taskmanger/ui/sceen/auths/sing_up_sceen.dart';
import 'package:taskmanger/ui/sceen/main_bottom_sceen.dart';
import 'package:taskmanger/ui/utility/aap_colors.dart';
import 'package:taskmanger/ui/weidgets/background_widgets.dart';
import 'package:taskmanger/ui/weidgets/snackber_massge.dart';

import '../../utility/app_contants.dart';

class SinginSceen extends StatefulWidget {
  const SinginSceen({super.key});

  @override
  State<SinginSceen> createState() => _SinginSceenState();
}

class _SinginSceenState extends State<SinginSceen> {
  final TextEditingController _emailTEcontroller = TextEditingController();
  final TextEditingController _passwordTEcontroller = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  bool _showPassword = false;
  bool _signInApiInProgress  = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidgets(
          child:  SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(24),
                child: Form(
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 100,),
                      Text("Get Started With",style: Theme.of(context).textTheme.titleLarge,),
                      SizedBox(height: 18,),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,

                        controller: _emailTEcontroller,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: 'email',
                          label: Text('email'),
                        ),
                        validator: (String? value) {
                          if (value?.trim().isEmpty ?? true) {
                            return 'Enter your email address';
                          }
                          if (AppConstants.emailRegExp.hasMatch(value!) ==
                              false) {
                            return 'Enter a valid email address';
                          }
                          return null;
                        },

                      ),
                      SizedBox(height: 8,),
                      TextFormField(
                        obscureText: _showPassword == false,
                        controller: _passwordTEcontroller,
                        decoration: InputDecoration(
                            hintText: 'password',
                          suffixIcon: IconButton(
                            onPressed: () {
                              _showPassword = !_showPassword;
                              if (mounted) {
                                setState(() {});
                              }
                            },
                            icon: Icon(_showPassword
                                ? Icons.remove_red_eye
                                : Icons.visibility_off),
                          ),

                        ),
                        validator: (String? value) {
                          if (value?.trim().isEmpty ?? true) {
                            return 'Enter your password';
                          }
                          return null;
                        },

                      ),
                      SizedBox(height: 18,),

                      Visibility(
                        visible: _signInApiInProgress == false,
                        replacement: Center(
                          child: CircularProgressIndicator(),
                        ),
                        child: ElevatedButton(onPressed: _onTapNextButton,

                            child: Icon(Icons.arrow_right_alt_outlined)),
                      ),
                      SizedBox(height: 36),
                      Center(
                        child: Column(
                          children: [
                            TextButton(onPressed: _onTapEmailVarification,
                                child: Text("Forgot Password?"),
                            ),
                            SizedBox(height: 8,),
                            RichText(text: TextSpan(
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                letterSpacing: .4
                              ),
                              text: "Don't have an account?",
                              children: [
                                TextSpan(
                                  text: "Sing Up",
                                  style: TextStyle(
                                    color: AppColors.green
                                  ),
                                  recognizer: TapGestureRecognizer()..onTap = _onTapSingUp

                                )
                              ]
                            ),

                            ),
                          ],
                        ),
                      )


                    ],
                  ),
                ),
              ),
            ),
          )),
    ) ;
  }
  void _onTapSingUp (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>SingUpSceen()));

  }
  void _onTapEmailVarification (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>EmailVarificationSceen()));

  }
  void _onTapNextButton (){
    if(_formkey.currentState!.validate()){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MainBottomSceen()));


    }

  }
  Future<void> _signUp() async {
    _signInApiInProgress = true;
    if (mounted) {
      setState(() {});
    }

    Map<String, dynamic> requestData = {
      'email': _emailTEcontroller.text.trim(),
      'password': _passwordTEcontroller.text,
    };

    final NetworkResponse response =
    await NetworkCaller.postRequest(Urls.login, body: requestData);
    _signInApiInProgress = false;
    if (mounted) {
      setState(() {});
    }
    if (response.isSuccess) {
      // LoginModel loginModel = LoginModel.fromJson(response.responseData);
      // await AuthController.saveUserAccessToken(loginModel.token!);
      // await AuthController.saveUserData(loginModel.userModel!);

      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MainBottomSceen(),
          ),
        );
      }
    } else {
      if (mounted) {
        showSnackBarMessage(
          context,
          response.errorMassage ??
              'Email/password is not correct. Try again',
        );
      }
    }
  }



  @override
  void dispose() {
    super.dispose();
    _passwordTEcontroller.dispose();
    _emailTEcontroller.dispose();
  }
}
