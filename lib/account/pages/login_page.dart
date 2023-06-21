import 'package:flutter/material.dart';
<<<<<<< HEAD
<<<<<<< HEAD
import 'package:flutter_bloc/flutter_bloc.dart';
=======
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
>>>>>>> 43f111d9fe14159bd16fa9a4fc713ef08f62762a
=======
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
>>>>>>> 43f111d9fe14159bd16fa9a4fc713ef08f62762a
import 'package:thunder/core/auth/bloc/auth_bloc.dart';
import 'package:thunder/utils/text_input_formatter.dart';

class LoginPage extends StatefulWidget {
<<<<<<< HEAD
<<<<<<< HEAD
  const LoginPage({super.key});
=======
  final VoidCallback popRegister;

  const LoginPage({super.key, required this.popRegister});
>>>>>>> 43f111d9fe14159bd16fa9a4fc713ef08f62762a
=======
  final VoidCallback popRegister;

  const LoginPage({super.key, required this.popRegister});
>>>>>>> 43f111d9fe14159bd16fa9a4fc713ef08f62762a

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController _usernameTextEditingController;
  late TextEditingController _passwordTextEditingController;
  late TextEditingController _instanceTextEditingController;

  bool showPassword = false;
  bool fieldsFilledIn = false;

  @override
  void initState() {
    super.initState();
    _usernameTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();
    _instanceTextEditingController = TextEditingController();

    _usernameTextEditingController.addListener(() {
<<<<<<< HEAD
<<<<<<< HEAD
      if (_usernameTextEditingController.text.isNotEmpty &&
          _passwordTextEditingController.text.isNotEmpty &&
          _instanceTextEditingController.text.isNotEmpty) {
=======
      if (_usernameTextEditingController.text.isNotEmpty && _passwordTextEditingController.text.isNotEmpty && _instanceTextEditingController.text.isNotEmpty) {
>>>>>>> 43f111d9fe14159bd16fa9a4fc713ef08f62762a
=======
      if (_usernameTextEditingController.text.isNotEmpty && _passwordTextEditingController.text.isNotEmpty && _instanceTextEditingController.text.isNotEmpty) {
>>>>>>> 43f111d9fe14159bd16fa9a4fc713ef08f62762a
        setState(() => fieldsFilledIn = true);
      } else {
        setState(() => fieldsFilledIn = false);
      }
    });

    _passwordTextEditingController.addListener(() {
<<<<<<< HEAD
<<<<<<< HEAD
      if (_usernameTextEditingController.text.isNotEmpty &&
          _passwordTextEditingController.text.isNotEmpty &&
          _instanceTextEditingController.text.isNotEmpty) {
=======
      if (_usernameTextEditingController.text.isNotEmpty && _passwordTextEditingController.text.isNotEmpty && _instanceTextEditingController.text.isNotEmpty) {
>>>>>>> 43f111d9fe14159bd16fa9a4fc713ef08f62762a
=======
      if (_usernameTextEditingController.text.isNotEmpty && _passwordTextEditingController.text.isNotEmpty && _instanceTextEditingController.text.isNotEmpty) {
>>>>>>> 43f111d9fe14159bd16fa9a4fc713ef08f62762a
        setState(() => fieldsFilledIn = true);
      } else {
        setState(() => fieldsFilledIn = false);
      }
    });

    _instanceTextEditingController.addListener(() {
<<<<<<< HEAD
<<<<<<< HEAD
      if (_usernameTextEditingController.text.isNotEmpty &&
          _passwordTextEditingController.text.isNotEmpty &&
          _instanceTextEditingController.text.isNotEmpty) {
=======
      if (_usernameTextEditingController.text.isNotEmpty && _passwordTextEditingController.text.isNotEmpty && _instanceTextEditingController.text.isNotEmpty) {
>>>>>>> 43f111d9fe14159bd16fa9a4fc713ef08f62762a
=======
      if (_usernameTextEditingController.text.isNotEmpty && _passwordTextEditingController.text.isNotEmpty && _instanceTextEditingController.text.isNotEmpty) {
>>>>>>> 43f111d9fe14159bd16fa9a4fc713ef08f62762a
        setState(() => fieldsFilledIn = true);
      } else {
        setState(() => fieldsFilledIn = false);
      }
    });
  }

  @override
  void dispose() {
    _usernameTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    _instanceTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
<<<<<<< HEAD
<<<<<<< HEAD
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
=======
=======
>>>>>>> 43f111d9fe14159bd16fa9a4fc713ef08f62762a
      padding: EdgeInsets.only(
        left: 12.0,
        right: 12.0,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
<<<<<<< HEAD
>>>>>>> 43f111d9fe14159bd16fa9a4fc713ef08f62762a
=======
>>>>>>> 43f111d9fe14159bd16fa9a4fc713ef08f62762a
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/logo.png', width: 196.0, height: 196.0),
              const SizedBox(height: 12.0),
<<<<<<< HEAD
<<<<<<< HEAD
              TextField(
                controller: _usernameTextEditingController,
                decoration: const InputDecoration(
                  isDense: true,
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
                enableSuggestions: false,
              ),
              const SizedBox(height: 12.0),
              TextField(
                controller: _passwordTextEditingController,
                obscureText: !showPassword,
                enableSuggestions: false,
                decoration: InputDecoration(
                  isDense: true,
                  border: const OutlineInputBorder(),
                  labelText: 'Password',
                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: IconButton(
                      icon: Icon(showPassword
                          ? Icons.visibility_rounded
                          : Icons.visibility_off_rounded),
                      onPressed: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                    ),
                  ),
=======
=======
>>>>>>> 43f111d9fe14159bd16fa9a4fc713ef08f62762a
              AutofillGroup(
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: _usernameTextEditingController,
                      autofillHints: const [AutofillHints.username],
                      decoration: const InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(),
                        labelText: 'Username',
                      ),
                      enableSuggestions: false,
                    ),
                    const SizedBox(height: 12.0),
                    TextField(
                      controller: _passwordTextEditingController,
                      obscureText: !showPassword,
                      enableSuggestions: false,
                      autofillHints: const [AutofillHints.password],
                      decoration: InputDecoration(
                        isDense: true,
                        border: const OutlineInputBorder(),
                        labelText: 'Password',
                        suffixIcon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: IconButton(
                            icon: Icon(showPassword ? Icons.visibility_rounded : Icons.visibility_off_rounded),
                            onPressed: () {
                              setState(() {
                                showPassword = !showPassword;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
<<<<<<< HEAD
>>>>>>> 43f111d9fe14159bd16fa9a4fc713ef08f62762a
=======
>>>>>>> 43f111d9fe14159bd16fa9a4fc713ef08f62762a
                ),
              ),
              const SizedBox(height: 12.0),
              TextField(
                controller: _instanceTextEditingController,
                inputFormatters: [LowerCaseTextFormatter()],
                decoration: const InputDecoration(
                  isDense: true,
                  border: OutlineInputBorder(),
                  labelText: 'Instance',
                  hintText: 'lemmy.ml',
                ),
                enableSuggestions: false,
              ),
              const SizedBox(height: 32.0),
              ElevatedButton(
<<<<<<< HEAD
<<<<<<< HEAD
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(60)),
                onPressed: (_usernameTextEditingController.text.isNotEmpty &&
                        _passwordTextEditingController.text.isNotEmpty &&
                        _instanceTextEditingController.text.isNotEmpty)
                    ? () => {
                          // Perform login authentication
                          context.read<AuthBloc>().add(LoginAttempt(
                                username:
                                    _usernameTextEditingController.text.trim(),
                                password:
                                    _passwordTextEditingController.text.trim(),
                                instance:
                                    _instanceTextEditingController.text.trim(),
                              ))
                        }
                    : null,
                child: Text('Login', style: theme.textTheme.titleMedium),
              ),
=======
=======
>>>>>>> 43f111d9fe14159bd16fa9a4fc713ef08f62762a
                style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(60), backgroundColor: theme.colorScheme.onSecondary),
                onPressed: (_usernameTextEditingController.text.isNotEmpty && _passwordTextEditingController.text.isNotEmpty && _instanceTextEditingController.text.isNotEmpty)
                    ? () {
                        TextInput.finishAutofillContext();
                        // Perform login authentication
                        context.read<AuthBloc>().add(
                              LoginAttempt(
                                username: _usernameTextEditingController.text,
                                password: _passwordTextEditingController.text,
                                instance: _instanceTextEditingController.text,
                              ),
                            );
                        context.pop();
                      }
                    : null,
                child: Text('Login', style: theme.textTheme.titleMedium),
              ),
              TextButton(
                style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(60)),
                onPressed: () => widget.popRegister(),
                child: Text('Cancel', style: theme.textTheme.titleMedium),
              ),
<<<<<<< HEAD
>>>>>>> 43f111d9fe14159bd16fa9a4fc713ef08f62762a
=======
>>>>>>> 43f111d9fe14159bd16fa9a4fc713ef08f62762a
            ],
          ),
        ),
      ),
    );
  }
}
