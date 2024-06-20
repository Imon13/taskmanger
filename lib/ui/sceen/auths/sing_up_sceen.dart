import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:taskmanger/data/model_class/network_response.dart';
import 'package:taskmanger/data/network_caller/network_caller.dart';
import 'package:taskmanger/ui/sceen/auths/sing_in_sceen.dart';
import 'package:taskmanger/ui/utility/aap_colors.dart';
import 'package:taskmanger/ui/utility/app_contants.dart';
import 'package:taskmanger/ui/weidgets/background_widgets.dart';
import 'package:taskmanger/ui/weidgets/snackber_massge.dart';

import '../../../data/utilities/urls.dart';

class SingUpSceen extends StatefulWidget {
  const SingUpSceen({super.key});

  @override
  State<SingUpSceen> createState() => _SinginSceenState();
}

// class _SinginSceenState extends State<SingUpSceen> {
//   final TextEditingController _firstNameTEcontroller = TextEditingController();
//   final TextEditingController _laststNameTEcontroller = TextEditingController();
//   final TextEditingController _emailTEcontroller = TextEditingController();
//   final TextEditingController _phonenumberTEcontroller = TextEditingController();
//   final TextEditingController _passwordTEcontroller = TextEditingController();
//   // final TextEditingController _confirmpassTEcontroller = TextEditingController();
//   final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
//   bool _showPssword = false;
//   // bool _showConfirmPssword = false;
//   bool _registrationInProgress  = false;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: BackgroundWidgets(
//           child:  SafeArea(
//             child: SingleChildScrollView(
//               child: Padding(
//                 padding:const EdgeInsets.all(24),
//                 child: Form(
//                   key: _formkey,
//                   autovalidateMode: AutovalidateMode.onUserInteraction,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const SizedBox(height: 100,),
//                       Text("Join with us",style: Theme.of(context).textTheme.titleLarge,),
//                         const SizedBox(height: 18,),
//                       TextFormField(
//                         controller: _firstNameTEcontroller,
//                         decoration: InputDecoration(
//                           hintText: 'first name',
//                           label: Text('first name'),
//                         ),
//                         validator: ( String? value){
//                           if(value?.trim().isEmpty?? true){
//                             return "Enter your first name";
//                           }
//                           return null;
//                         },
//
//                       ),
//                       SizedBox(height: 8,),
//                       TextFormField(
//                         controller: _laststNameTEcontroller,
//                         decoration: InputDecoration(
//                           hintText: 'last name',
//                           label: Text('last name'),
//                         ),
//                         validator: ( String? value){
//                           if(value?.trim().isEmpty?? true){
//                             return "Enter your last name";
//                           }
//                           return null;
//                         },
//
//                       ),
//                       SizedBox(height: 8,),
//                       TextFormField(
//                         controller: _emailTEcontroller,
//                         keyboardType: TextInputType.emailAddress,
//                         decoration: InputDecoration(
//                           hintText: 'email ',
//                           label: Text('email'),
//                         ),
//
//                         validator: ( String? value){
//                           if(value?.trim().isEmpty?? true){
//                             return "Enter your email";
//                           }
//                           if(AppConstants.emailRegExp.hasMatch(value!) == false){
//                             return 'Enter vaild email';
//                           }
//                           return null;
//                         },
//
//                       ),
//                       SizedBox(height: 8,),
//                       TextFormField(
//                         controller: _phonenumberTEcontroller,
//                         keyboardType: TextInputType.number,
//                         decoration: InputDecoration(
//                           hintText: 'phone number',
//
//                           label: Text('phone number'),
//                         ),
//                         validator: ( String? value){
//                           if(value?.trim().isEmpty?? true){
//                             return "Enter your phone number";
//                           }
//
//                           return null;
//                         },
//
//                       ),
//                       SizedBox(height: 8,),
//                       TextFormField(
//                         controller: _passwordTEcontroller,
//                         obscureText: _showPssword==false,
//                         decoration: InputDecoration(
//                           hintText: 'password',
//                           suffixIcon: IconButton(onPressed: (){
//                             _showPssword = !_showPssword;
//                             if(mounted){
//                               setState(() {
//
//                               });
//                             }
//                           },
//                               icon: Icon(_showPssword ?Icons.visibility_off: Icons.remove_red_eye_sharp)),
//                           label: Text('password'),
//                         ),
//                         validator: ( String? value){
//                           if(value?.trim().isEmpty?? true){
//                             return "Enter your paswword";
//                           }
//                           return null;
//                         },
//
//                       ),
//                       SizedBox(height: 8,),
//                       // TextFormField(
//                       //   controller: _confirmpassTEcontroller,
//                       //   obscureText: _showConfirmPssword==false,
//                       //   decoration: InputDecoration(
//                       //     hintText: 'confirm password',
//                       //     suffixIcon: IconButton(onPressed: (){
//                       //       _showConfirmPssword = !_showConfirmPssword;
//                       //       if(mounted){
//                       //         setState(() {
//                       //
//                       //         });
//                       //       }
//                       //     },
//                       //         icon: Icon( _showConfirmPssword?Icons.visibility_off: Icons.remove_red_eye_sharp )),
//                       //
//                       //     label: Text('confirm password'),
//                       //   ),
//                       //   validator: ( String? value){
//                       //     if(value?.trim().isEmpty?? true){
//                       //       return "Enter your confirm password";
//                       //     }
//                       //     return null;
//                       //   },
//                       //
//                       // ),
//                       SizedBox(height: 8,),
//                       ElevatedButton(onPressed: (){
//                         if(_formkey.currentState!.validate()){
//                           _register();
//
//                         }
//                       },
//                           child: Icon(Icons.arrow_right_alt_outlined)),
//                       SizedBox(height: 36),
//                       Center(
//                         child: Column(
//
//                           children: [
//                             RichText(text: TextSpan(
//                                     style: TextStyle(
//                                         color: Colors.black,
//                                         fontWeight: FontWeight.w700,
//                                         letterSpacing: .4
//                                     ),
//                                     text: "Already have an account?",
//                                     children: [
//                                       TextSpan(
//                                           text: "Sing In",
//                                           style: TextStyle(
//                                               color: AppColors.green
//                                           ),
//                                           recognizer: TapGestureRecognizer()..onTap =_onTapSingIn
//
//                                       )
//
//                             ]))
//                           ],
//                         ),
//                       )
//
//
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           )),
//     ) ;
//   }
//     Future<void> _register() async {
//     _registrationInProgress = true;
//     if(mounted){
//       setState(() {
//
//       });
//     }
//     Map<String, dynamic> requestInput ={
//
//
//         "email":_emailTEcontroller.text.trim(),
//         "firstName":_firstNameTEcontroller.text.trim(),
//         "lastName":_laststNameTEcontroller.text.trim(),
//         "mobile":_phonenumberTEcontroller.text.trim(),
//         "password":_passwordTEcontroller.text,
//         "photo":""
//
//
//
//     };
//     NetworkResponse response = await NetworkCaller.postRequest(Urls.registration,body: requestInput);
//     if(response.isSuccess){
//       _clearText();
//     if(mounted){
//       showSnackBarMessage(context, 'Succesfully registerd');
//     }
//     }
//     else{
//       if(mounted){
//         showSnackBarMessage(context, response.errorMassage?? 'registration failed!! try again');
//       }
//
//     }
//   }
//   void _clearText(){
//     _emailTEcontroller.clear();
//     _passwordTEcontroller.clear();
//     _laststNameTEcontroller.clear();
//     _firstNameTEcontroller.clear();
//     _emailTEcontroller.clear();
//   }
//   void _onTapSingIn (){
//     Navigator.push(context, MaterialPageRoute(
//         builder: (context)=>SinginSceen()
//     )
//     );
//
//   }
//   @override
//   void dispose() {
//     super.dispose();
//     _firstNameTEcontroller.dispose();
//     _laststNameTEcontroller.dispose();
//     _phonenumberTEcontroller.dispose();
//     // _confirmpassTEcontroller.dispose();
//     _passwordTEcontroller.dispose();
//     _emailTEcontroller.dispose();
//   }
// }
class _SinginSceenState extends State<SingUpSceen>{
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  final TextEditingController _firstNameTEController = TextEditingController();
  final TextEditingController _lastNameTEController = TextEditingController();
  final TextEditingController _mobileTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _showPassword = false;
  bool _registrationInProgress = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidgets(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 100),
                    Text(
                      'Join With Us',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 24),
                    TextFormField(
                      controller: _emailTEController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(hintText: 'Email'),
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
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: _firstNameTEController,
                      decoration: const InputDecoration(hintText: 'First name'),
                      validator: (String? value) {
                        if (value?.trim().isEmpty ?? true) {
                          return 'Enter your first name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: _lastNameTEController,
                      decoration: const InputDecoration(hintText: 'Last name'),
                      validator: (String? value) {
                        if (value?.trim().isEmpty ?? true) {
                          return 'Enter your last name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: _mobileTEController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(hintText: 'Mobile'),
                      validator: (String? value) {
                        if (value?.trim().isEmpty ?? true) {
                          return 'Enter your mobile';
                        }
                        // if (AppConstants.mobileRegExp.hasMatch(value!) == false) {
                        //   return 'Enter a valid phone number';
                        // }
                        return null;
                      },
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      obscureText: _showPassword == false,
                      controller: _passwordTEController,
                      decoration: InputDecoration(
                        hintText: 'Password',
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
                    const SizedBox(height: 16),
                    Visibility(
                      visible: _registrationInProgress == false,
                      replacement: const Center(
                        child: CircularProgressIndicator(),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _registerUser();
                          }
                        },
                        child: const Icon(Icons.arrow_circle_right_outlined),
                      ),
                    ),
                    const SizedBox(height: 36),
                    _buildBackToSignInSection()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBackToSignInSection() {
    return Center(
      child: RichText(
        text: TextSpan(
          style: TextStyle(
            color: Colors.black.withOpacity(0.8),
            fontWeight: FontWeight.w600,
            letterSpacing: 0.4,
          ),
          text: "Have account? ",
          children: [
            TextSpan(
              text: 'Sign In',
              style: const TextStyle(color: AppColors.green),
              recognizer: TapGestureRecognizer()..onTap = _onTapSignInButton,
            )
          ],
        ),
      ),
    );
  }

  Future<void> _registerUser() async {
    _registrationInProgress = true;
    if (mounted) {
      setState(() {});
    }
    Map<String, dynamic> requestInput = {
      "email": _emailTEController.text.trim(),
      "firstName": _firstNameTEController.text.trim(),
      "lastName": _lastNameTEController.text.trim(),
      "mobile": _mobileTEController.text.trim(),
      "password": _passwordTEController.text,
      "photo": ""
    };
    NetworkResponse response =
    await NetworkCaller.postRequest(Urls.registration, body: requestInput);
    _registrationInProgress = false;
    if (mounted) {
      setState(() {});
    }
    if (response.isSuccess) {
      _clearTextFields();
      if (mounted) {
        showSnackBarMessage(context, 'Registration success');
      }
    } else {
      if (mounted) {
        showSnackBarMessage(
          context,
          response.errorMassage ?? 'Registration failed! Try again.',
        );
      }
    }
  }

  void _clearTextFields() {
    _emailTEController.clear();
    _firstNameTEController.clear();
    _lastNameTEController.clear();
    _passwordTEController.clear();
    _mobileTEController.clear();
  }

  void _onTapSignInButton() {
    Navigator.pop(context);
  }

  @override
  void dispose() {
    _emailTEController.dispose();
    _firstNameTEController.dispose();
    _lastNameTEController.dispose();
    _mobileTEController.dispose();
    _passwordTEController.dispose();
    super.dispose();
  }
}
