import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:taskmanger/ui/sceen/sing_in_sceen.dart';

import '../utility/aap_colors.dart';
import '../weidgets/background_widgets.dart';

class EmailVarificationSceen extends StatefulWidget {
  const EmailVarificationSceen({super.key});

  @override
  State<EmailVarificationSceen> createState() => _EmailVarificationSceenState();
}

class _EmailVarificationSceenState extends State<EmailVarificationSceen> {
  TextEditingController _emailTEcontroller =TextEditingController();
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
                    Text("Your email address",style: Theme.of(context).textTheme.titleLarge,),
                    SizedBox(height: 8,),
                    Text("A six digits varification pin send in your email",style: Theme.of(context).textTheme.titleSmall),
                    SizedBox(height: 18,),
                    TextFormField(
                      controller: _emailTEcontroller,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'email',
                        label: Text('email'),
                      ),

                    ),

                    
                   
                    SizedBox(height: 18,),
                    ElevatedButton(onPressed: (){},
                        child: Icon(Icons.arrow_right_alt_outlined)),
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
                                    recognizer: TapGestureRecognizer()..onTap =(){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SinginSceen()));
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
    _emailTEcontroller.dispose();
  }
}

// void _onTapSingIn (){
//   Navigator.push(context, MaterialPageRoute(
//       builder: (context)=>SinginSceen()
//   )
//   );
//
// }

