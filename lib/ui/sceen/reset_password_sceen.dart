import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:taskmanger/ui/sceen/pin_varification_sceen.dart';
import 'package:taskmanger/ui/sceen/sing_in_sceen.dart';

import '../utility/aap_colors.dart';
import '../weidgets/background_widgets.dart';

class ResetPasswordSceen extends StatefulWidget {
  const ResetPasswordSceen({super.key});

  @override
  State<ResetPasswordSceen> createState() => _ResetPasswordSceenState();
}

class _ResetPasswordSceenState extends State<ResetPasswordSceen> {
  TextEditingController _passwordlTEcontroller = TextEditingController();
  TextEditingController _confirmPasswordlTEcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidgets(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 100,),
                    Text("Set Password", style: Theme
                        .of(context)
                        .textTheme
                        .titleLarge,),
                    SizedBox(height: 8,),
                    Text(
                        "A minimum length of password 8 character with conbination of number and character",
                        style: Theme
                            .of(context)
                            .textTheme
                            .titleSmall),
                    SizedBox(height: 18,),
                    TextFormField(
                      controller: _passwordlTEcontroller,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'password',
                        label: Text('password'),
                      ),

                    ),
                    SizedBox(height: 8,),
                    TextFormField(
                      controller: _confirmPasswordlTEcontroller,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'comfirm password',
                        label: Text('confirm password'),
                      ),

                    ),


                    SizedBox(height: 18,),
                    ElevatedButton(onPressed: _onTapConfirmButoon,
                        child: Text('Confirm')),
                    SizedBox(height: 36),
                    Center(
                      child: Column(
                        children: [
                          RichText(text: TextSpan(
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: .4
                              ),
                              text: "Already have an account?",
                              children: [
                                TextSpan(
                                    text: "Sing In",
                                    style: TextStyle(
                                        color: AppColors.green
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SinginSceen()));
                                      }

                                )

                              ]))
                        ],
                      ),
                    )


                  ],
                ),
              ),
            ),
          )),
    );
  }

  void dispose() {
    super.dispose();
    _passwordlTEcontroller.dispose();
    _confirmPasswordlTEcontroller.dispose();
  }
  void _onTapConfirmButoon (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>SinginSceen()));
  }
}


// void _onTapSingIn (){
//   Navigator.push(context, MaterialPageRoute(
//       builder: (context)=>SinginSceen()
//   )
//   );
//
// }

