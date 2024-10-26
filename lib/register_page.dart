import 'package:flutter/material.dart';

import 'components/my_button.dart';
import 'components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
 final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
final TextEditingController confirmpasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(height: 25),
            Text(
              "Create an account",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(height: 10),
            MyTextfield(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
            ),
            const SizedBox(height: 10),
            MyTextfield(
              controller: passwordController,
              hintText: "Password",
              obscureText: true,
            ),
             const SizedBox(height: 10),
            MyTextfield(
              controller: confirmpasswordController,
              hintText: "Confirm Password",
              obscureText: true,
            ),
            const SizedBox(height: 10),
            MyButton(text: "Sign Up", onTap: () {}),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "alreadt have an account?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(width: 4), // Fixed to width instead of height
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Log in now",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
