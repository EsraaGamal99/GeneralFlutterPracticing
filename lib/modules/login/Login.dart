import 'package:first_project/shared/components/components.dart';
import 'package:flutter/material.dart';

import '../bmi/BMIScreen.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();
  var isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.indigoAccent),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),

                  // TextFormField(
                  //   controller: emailController,
                  //   keyboardType: TextInputType.emailAddress,
                  //   onFieldSubmitted:(value){
                  //     print(value);
                  //   },
                  //
                  //   validator: (value){
                  //     if (value!.isEmpty){
                  //       return 'Email';
                  //     }
                  //     return null;
                  //   },
                  //
                  //   onChanged: (value){
                  //     print(value);
                  //   },
                  //   decoration: InputDecoration(
                  //     labelText: 'Email Address',
                  //     border: OutlineInputBorder(),
                  //     prefixIcon: Icon(
                  //       Icons.email,
                  //     ),
                  //
                  //   ) ,
                  // ),
                  defaultTextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      text: 'Email',
                      labelText: 'Email Address',
                      prefixIcon: Icons.email),

                  SizedBox(
                    height: 10.0,
                  ),

                  // TextFormField(
                  //   controller: passwordController,
                  //
                  //   keyboardType: TextInputType.visiblePassword,
                  //   obscureText: true,
                  //   onFieldSubmitted: (value) {
                  //     print(value);
                  //   },
                  //   onChanged: (value) {
                  //     print(value);
                  //   },
                  //
                  //   validator: (value) {
                  //     if (value!.isEmpty) {
                  //       return 'Password';
                  //     }
                  //     return null;
                  //   },
                  //   decoration: InputDecoration(
                  //     labelText: 'Password',
                  //     suffixIcon: Icon(
                  //       Icons.remove_red_eye,
                  //     ),
                  //     prefixIcon: Icon(
                  //       Icons.lock,
                  //     ),
                  //   ),
                  // ),
                  defaultTextFormField(
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    keyboardType: TextInputType.visiblePassword,
                    controller: passwordController,
                    text: 'Password',
                    labelText: 'Password',
                    suffixIcon:
                        isPassword ? Icons.visibility_off : Icons.visibility,
                    prefixIcon: Icons.lock,
                    isPassword: isPassword,
                    suffixPressed: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                  ),
                  SizedBox(
                    height: 15.0,
                  ),

                  // Container(
                  //   width: double.infinity,
                  //   color: Colors.indigoAccent,
                  //   child: MaterialButton(
                  //     onPressed: () {
                  //       if (formKey.currentState!.validate()) {
                  //         print(emailController.text);
                  //         print(passwordController.text);
                  //       }
                  //     },
                  //     child: Text(
                  //       'LOGIN',
                  //       style: TextStyle(
                  //         color: Colors.white,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  //
                  // SizedBox(
                  //   height: 15.0,
                  // ),

                  defaultButton(
                    onPressed: () {

                      if (formKey.currentState.validate()) {
                        print(emailController.text);
                        print(passwordController.text);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BMIScreen()),
                        );
                      }
                    },
                    text: 'Login2',
                    backgroundColor: Colors.teal,
                    radius: 20.0,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account ? '),
                      TextButton(
                        onPressed: () {
                          print('Registered');
                        },
                        child: Text('Register Now'),
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