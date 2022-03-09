import 'package:app_theme_mansour/shared/components/components.dart';
import 'package:flutter/material.dart';

class ShopLoginScreen extends StatelessWidget {
  const ShopLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'LOGIN',
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(color: Colors.black),
            ),
            Text(
              'Login now to browse our hot offers',
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  ?.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 30.0,
            ),
            defaultFormField(
              controller: emailController,
              type: TextInputType.emailAddress,
              validate: (value) {
                if (value!.isEmpty) {
                  return 'please enter your email address';
                }
              },
              label: 'Email Address',
              prefix: Icons.email_outlined,
            ),
            const SizedBox(
              height: 15.0,
            ),
            defaultFormField(
              controller: passwordController,
              type: TextInputType.visiblePassword,
              validate: (value){
                if (value!.isEmpty) {
                  return 'password is too short';
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
