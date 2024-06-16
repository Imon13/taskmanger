import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:taskmanger/ui/sceen/sing_in_sceen.dart';
import 'package:taskmanger/ui/utility/aap_colors.dart';
import 'package:taskmanger/ui/weidgets/background_widgets.dart';

class SingUpSceen extends StatefulWidget {
  const SingUpSceen({super.key});

  @override
  State<SingUpSceen> createState() => _SinginSceenState();
}

class _SinginSceenState extends State<SingUpSceen> {
  final TextEditingController _firstNameTEcontroller = TextEditingController();
  final TextEditingController _laststNameTEcontroller = TextEditingController();
  final TextEditingController _emailTEcontroller = TextEditingController();
  final TextEditingController _phonenumberTEcontroller = TextEditingController();
  final TextEditingController _passwordTEcontroller = TextEditingController();
  final TextEditingController _confirmpassTEcontroller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidgets(
          child:  SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 100,),
                    Text("Join with us",style: Theme.of(context).textTheme.titleLarge,),
                    SizedBox(height: 18,),
                    TextFormField(
                      controller: _firstNameTEcontroller,
                      decoration: InputDecoration(
                        hintText: 'first name',
                        label: Text('first name'),
                      ),

                    ),
                    SizedBox(height: 8,),
                    TextFormField(
                      controller: _laststNameTEcontroller,
                      decoration: InputDecoration(
                        hintText: 'last name',
                        label: Text('last name'),
                      ),

                    ),
                    SizedBox(height: 8,),
                    TextFormField(
                      controller: _emailTEcontroller,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'email ',
                        label: Text('email'),
                      ),

                    ),
                    SizedBox(height: 8,),
                    TextFormField(
                      controller: _phonenumberTEcontroller,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'phone number',
                        label: Text('phone number'),
                      ),

                    ),
                    SizedBox(height: 8,),
                    TextFormField(
                      controller: _passwordTEcontroller,
                      decoration: InputDecoration(
                        hintText: 'password',
                        label: Text('password'),
                      ),

                    ),
                    SizedBox(height: 8,),
                    TextFormField(
                      controller: _confirmpassTEcontroller,
                      decoration: InputDecoration(
                        hintText: 'confirm password',
                        label: Text('confirm password'),
                      ),

                    ),
                    SizedBox(height: 8,),
                    ElevatedButton(onPressed: (){},
                        child: Icon(Icons.arrow_right_alt_outlined)),
                    SizedBox(height: 36),
                    Center(
                      child: Column(
                        // children: [
                        //   TextButton(onPressed: (){},
                        //     child: Text("Forgot Password?"),
                        //   ),
                        //   SizedBox(height: 8,),
                        //   RichText(text: TextSpan(
                        //       style: TextStyle(
                        //           color: Colors.black,
                        //           fontWeight: FontWeight.w700,
                        //           letterSpacing: .4
                        //       ),
                        //       text: "Don't have an account?",
                        //       children: [
                        //         TextSpan(
                        //             text: "Sing Up",
                        //             style: TextStyle(
                        //                 color: AppColors.green
                        //             ),
                        //             recognizer: TapGestureRecognizer()..onTap =(){
                        //               print('imon');
                        //             }
                        //
                        //         )
                        //       ]
                        //   ),
                        //
                        //   ),
                        // ],
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
                                        recognizer: TapGestureRecognizer()..onTap =_onTapSingIn

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
    ) ;
  }
  void _onTapSingIn (){
    Navigator.push(context, MaterialPageRoute(
        builder: (context)=>SinginSceen()
    )
    );

  }
  @override
  void dispose() {
    super.dispose();
    _firstNameTEcontroller.dispose();
    _laststNameTEcontroller.dispose();
    _phonenumberTEcontroller.dispose();
    _confirmpassTEcontroller.dispose();
    _passwordTEcontroller.dispose();
    _emailTEcontroller.dispose();
  }
}
