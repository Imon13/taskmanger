import 'package:flutter/material.dart';
import 'package:taskmanger/ui/weidgets/background_widgets.dart';
import 'package:taskmanger/ui/weidgets/profile_appber.dart';

class UdateProfileSceen extends StatefulWidget {
  const UdateProfileSceen({super.key});

  @override
  State<UdateProfileSceen> createState() => _UdateProfileSceenState();
}

class _UdateProfileSceenState extends State<UdateProfileSceen> {
  TextEditingController _emailTEController = TextEditingController();
  TextEditingController _firstNameTEController = TextEditingController();
  TextEditingController _lastNameTEController = TextEditingController();
  TextEditingController _phoneNumberTEController = TextEditingController();
  TextEditingController _passwordTEController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profileAppber(context,true),
      body: BackgroundWidgets(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Form(
              key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                SizedBox(height: 48,),
                Text('Update Profile',style: Theme.of(context).textTheme.titleLarge,),
                _buildPhotoPick(),
                SizedBox(height: 8,),
                TextFormField(
                  controller: _emailTEController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'email',
                    label: Text('email')
                  ),
                ),
                SizedBox(height: 8,),
                TextFormField(
                  controller: _firstNameTEController,
                  decoration: InputDecoration(
                      hintText: 'first name',
                      label: Text('first name')
                  ),
                ),
                SizedBox(height: 8,),
                TextFormField(
                  controller: _lastNameTEController,
                  decoration: InputDecoration(
                      hintText: 'last name',
                      label: Text('last name')
                  ),
                ),
                SizedBox(height: 8,),
                TextFormField(
                  controller: _phoneNumberTEController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      hintText: 'phone number',
                      label: Text('phone number')
                  ),
                ),
                SizedBox(height: 8,),
                TextFormField(
                  controller: _passwordTEController,
                  decoration: InputDecoration(
                      hintText: 'password',
                      label: Text('password')
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){}, child: Icon(Icons.arrow_right)),
                SizedBox(height: 25,),

              ],),
            ),
          ),
        ),
      ),
    );
  }
  @override
  void dispose() {
    _passwordTEController.dispose();
    _phoneNumberTEController.dispose();
    super.dispose();
    _firstNameTEController.dispose();
    _lastNameTEController.dispose();
    _emailTEController.dispose();

  }
}

class _buildPhotoPick extends StatelessWidget {
  const _buildPhotoPick({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,

      ),
      alignment: Alignment.centerLeft,
      child: Container(
        width: 100,
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            bottomLeft: Radius.circular(8),
          ),
          color: Colors.grey,


        ),
        alignment: Alignment.center,
        child: Text('photos',style: TextStyle(
          fontWeight: FontWeight.w400,
          color: Colors.white
        ),),

      ),
    );
  }
}
