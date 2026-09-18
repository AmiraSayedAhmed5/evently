import 'package:evently/core/default_elevated_button.dart';
import 'package:evently/core/default_text_form_field.dart';
import 'package:evently/screens/register_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName='/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            key: formKey,
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Center(child: Image.asset('assets/images/Evently.png',height: 28,fit: .scaleDown,)),
                Spacer(),
                Text('Login to your account',style:textTheme.headlineMedium),
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
                DefaultElevatedButton(label: 'Login', onPressed:login),
                SizedBox(height: 24,),
                Row(
                  mainAxisAlignment: .center,
                  children: [
                    Text('Don’t have an account ?',style: textTheme.titleSmall,),
                    TextButton(onPressed: (){
                      Navigator.of(context).pushReplacementNamed(RegisterScreen.routeName);
                    }, child:Text('Register'))
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

  void login(){
    if(formKey.currentState!.validate()){
      //Login logic
    }

  }
}
