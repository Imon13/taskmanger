import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:taskmanger/ui/sceen/sing_in_sceen.dart';

import '../utility/aap_colors.dart';
import '../weidgets/background_widgets.dart';

class PinVarificationSceen extends StatefulWidget {
  const PinVarificationSceen({super.key});

  @override
  State<PinVarificationSceen> createState() => _PinVarificationSceenState();
}

class _PinVarificationSceenState extends State<PinVarificationSceen> {
  TextEditingController _pinTEcontroller =TextEditingController();
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
                    Text("Pin Varification",style: Theme.of(context).textTheme.titleLarge,),
                    SizedBox(height: 8,),
                    Text("A six digits varification pin send in your email",style: Theme.of(context).textTheme.titleSmall),
                    SizedBox(height: 18,),
                    PinCodeTextField(
                      length: 6,

                      animationType: AnimationType.fade,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 40,
                        activeFillColor: Colors.white,
                        selectedFillColor: Colors.white,
                        inactiveFillColor: Colors.white,
                        selectedColor: AppColors.green
                      ),
                      keyboardType: TextInputType.number,
                      animationDuration: Duration(milliseconds: 300),
                      backgroundColor: Colors.transparent,
                      enableActiveFill: true,

                      controller: _pinTEcontroller,


                     appContext: context,
                    ),



                    SizedBox(height: 18,),
                    ElevatedButton(onPressed: (){},
                        child:Text("Varify")),
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
   _pinTEcontroller.dispose();
  }
}

// void _onTapSingIn (){
//   Navigator.push(context, MaterialPageRoute(
//       builder: (context)=>SinginSceen()
//   )
//   );
//
// }

