import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:taskmanger/ui/utility/aap_colors.dart';
import 'package:taskmanger/ui/weidgets/background_widgets.dart';

class SinginSceen extends StatefulWidget {
  const SinginSceen({super.key});

  @override
  State<SinginSceen> createState() => _SinginSceenState();
}

class _SinginSceenState extends State<SinginSceen> {
  final TextEditingController _emailTEcontroller = TextEditingController();
  final TextEditingController _passwordTEcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidgets(
          child:  SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 80,),
                    Text("Get Started With",style: Theme.of(context).textTheme.titleLarge,),
                    SizedBox(height: 18,),
                    TextFormField(
                      controller: _emailTEcontroller,
                      decoration: InputDecoration(
                          hintText: 'email',
                        label: Text('email'),
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
                    SizedBox(height: 18,),
                    ElevatedButton(onPressed: (){},
                        child: Icon(Icons.arrow_right_alt_outlined)),
                    SizedBox(height: 36),
                    Center(
                      child: Column(
                        children: [
                          TextButton(onPressed: (){},
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
                                recognizer: TapGestureRecognizer()..onTap =(){
                                  print('imon');
                                }

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
          )),
    ) ;
  }
  @override
  void dispose() {
    super.dispose();
    _passwordTEcontroller.dispose();
    _emailTEcontroller.dispose();
  }
}
