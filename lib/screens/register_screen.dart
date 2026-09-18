import 'package:evently/screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../core/default_elevated_button.dart';
import '../core/default_text_form_field.dart';

class RegisterScreen extends StatefulWidget {
 static const String routeName='/register';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController =TextEditingController();
  TextEditingController emailController =TextEditingController();
  TextEditingController passwordController =TextEditingController();
  GlobalKey<FormState> formKey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme =Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key:formKey,
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Center(child: Image.asset('assets/images/Evently.png',height: 28,fit: .scaleDown,)),
                Spacer(),
                Text('Create your account',style:textTheme.headlineMedium),
                SizedBox(height: 24,),
                DefaultTextFormField(hintText:'Enter your email',prefixIconImageName: 'email',
                  controller: emailController,
                  validator: (value){
                    if(value==null || value.length<5){
                      return "Invalid email";
                    }return null;
                  },
                ),
                SizedBox(height: 16,),
                DefaultTextFormField(hintText:'Enter your name',prefixIconImageName: 'email',
                  controller: nameController,
                  validator: (value){
                    if(value==null || value.length<2){
                      return "Invalid name";
                    }return null;
                  },
                ),
                SizedBox(height: 16,),
                DefaultTextFormField(hintText:'Enter your password',prefixIconImageName: 'password',
                  controller:passwordController,
                  validator: (value){
                    if(value==null || value.length<8){
                      return "Invalid password";
                    }return null;
                  },
                  isPassword: true,
                ),
                Spacer(),
                DefaultElevatedButton(label: 'Register', onPressed:register),
                SizedBox(height: 24,),
                Row(
                  mainAxisAlignment: .center,
                  children: [
                    Text('Already have an account?',style: textTheme.titleSmall,),
                    TextButton(onPressed: (){
                      Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
                    }, child:Text('Login'))
                  ],
                ),
                Spacer(flex: 10,),
            
              ],
            ),
          ),
        ),
      ),
    );
  }

  void register(){
    if(formKey.currentState!.validate()!);
    //Register logic
  }
}
