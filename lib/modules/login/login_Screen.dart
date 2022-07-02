import 'dart:ffi';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:mobile_app/shared/components/components.dart';

class LoginScreen extends StatefulWidget
{
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailcontroller = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPassword = true;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 70.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  defaultFormField(
                    controller: emailcontroller,
                    prefix: Icons.email,
                    labelText: 'Email Address',
                    type: TextInputType.emailAddress,
                    validate: (value)
                    {
                      if(value!.isEmpty)
                        {
                          return 'Email must not be empty';
                        }
                      return null;
                    }
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  defaultFormField(
                      controller: passwordController,
                      prefix: Icons.lock,
                      labelText: 'Password',
                      type: TextInputType.visiblePassword,
                      isPassword: isPassword,
                      suffixPressed: ()
                      {
                        setState(()
                        {
                          isPassword = !isPassword;
                        });
                      },
                      suffix: isPassword ? Icons.visibility : Icons.visibility_off,
                      validate: (value)
                      {
                        if(value!.isEmpty)
                        {
                          return 'Password must not be empty';
                        }
                        return null;
                      }
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  defaultButton(
                    text: 'login',
                    radius: 15.0,
                    onPressed: ()
                    {
                      if(formKey.currentState!.validate())
                        {
                          print(emailcontroller.text);
                          print(passwordController.text);
                        }
                    },
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  defaultButton(
                    text: 'register',
                    radius: 15.0,
                    onPressed: ()
                    {
                      if(formKey.currentState!.validate())
                      {
                        print(emailcontroller.text);
                        print(passwordController.text);
                      }
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    [
                       Text(
                         'Don\'t have an account?',
                       ),
                      TextButton(
                          onPressed: (){},
                          child: Text(
                            'Register Now',
                          ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
