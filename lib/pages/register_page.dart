import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/components/my_textfield.dart';
import 'package:food_delivery_app/pages/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController confirmPassController = TextEditingController();

  bool _obscureText = true;
  String _errorMessage = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Icon(
                Icons.lock_open_rounded,
                size: 100,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),

              SizedBox(height: 25),

              // message , app slogan
              Text(
                "Lets create an account for you",
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),

              SizedBox(height: 20),

              // name textfield
              MyTextfield(
                controller: nameController,
                hintText: "Enter your full name",
                obscureText: false,
                prefixIcon: Icon(
                  Icons.person,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),

              SizedBox(height: 10),

              // email textfield
              MyTextfield(
                controller: emailController,
                hintText: "Enter your email",
                obscureText: false,
                prefixIcon: Icon(
                  Icons.email,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),

              SizedBox(height: 10),
              // password textfield
              MyTextfield(
                controller: passController,
                hintText: "Enter your password",
                obscureText: _obscureText,
                prefixIcon: Icon(
                  Icons.lock_open,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  child: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),
              SizedBox(height: 10),
              // confirm password textfield
              MyTextfield(
                controller: confirmPassController,
                hintText: "Confirm your password",
                obscureText: _obscureText,
                prefixIcon: Icon(
                  Icons.lock_open,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  child: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),
              if (_errorMessage.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    _errorMessage,
                    style: TextStyle(color: Colors.red),
                  ),
                ),

              SizedBox(height: 20),

              // sign in button
              MyButton(
                buttonText: "Register",
                onTap: () {
                  setState(() {
                    if (nameController.text.isEmpty ||
                        emailController.text.isEmpty ||
                        passController.text.isEmpty ||
                        confirmPassController.text.isEmpty) {
                      _errorMessage = "Please fill in all fields";
                    } else if (passController.text !=
                        confirmPassController.text) {
                      _errorMessage = "Passwords do not match";
                    } else {
                      _errorMessage = "";
                      // Proceed with registration
                    }
                  });
                },
              ),

              SizedBox(height: 25),

              // Already a member? Login Now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "Already a member?",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                        child: Text(
                          "Login Now",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
