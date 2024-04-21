// ignore_for_file: use_build_context_synchronously

import 'package:chiya_startup/server/enum/auth_enum.dart';
import 'package:chiya_startup/state/providers/auth_state_provider.dart';
import 'package:chiya_startup/state/providers/is_loading_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isObscure = true;
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final TextEditingController _usernameController;
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _usernameController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const CircleAvatar(
                      radius: 70,
                      child: Image(
                        image: AssetImage(
                          "assets/images/chiyaapp.png",
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 20),
                      child: Text(
                        "Unveiling the tales of nepali entrepreneurs, One story at a time.",
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.8,
                            fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Divider(height: 30, color: Colors.grey),
                  ],
                ),
              ),
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 30, top: 20, right: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Register",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text("Email",
                            style: Theme.of(context).textTheme.titleMedium),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.email_outlined),
                              hintText: "Enter your email",
                              filled: true,
                              fillColor: Theme.of(context).focusColor,
                              contentPadding: const EdgeInsets.all(10),
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)))),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text("Email",
                            style: Theme.of(context).textTheme.titleMedium),
                        const SizedBox(
                          height: 8,
                        ),
                        TextField(
                          controller: _usernameController,
                          decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.email_outlined),
                              hintText: "Enter your username",
                              filled: true,
                              fillColor: Theme.of(context).focusColor,
                              contentPadding: const EdgeInsets.all(10),
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)))),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Password",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        TextField(
                          controller: _passwordController,
                          obscureText: _isObscure,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                },
                                icon: Icon(
                                  _isObscure
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Theme.of(context)
                                      .indicatorColor
                                      .withOpacity(0.6),
                                ),
                              ),
                              prefixIcon: const Icon(Icons.lock_outline),
                              filled: true,
                              fillColor: Theme.of(context).focusColor,
                              hintText: "Enter your password",
                              contentPadding: const EdgeInsets.all(10),
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)))),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Confirm Password",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        TextField(
                          obscureText: _isObscure,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                },
                                icon: Icon(
                                  _isObscure
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Theme.of(context)
                                      .indicatorColor
                                      .withOpacity(0.6),
                                ),
                              ),
                              prefixIcon: const Icon(Icons.lock_outline),
                              filled: true,
                              fillColor: Theme.of(context).focusColor,
                              hintText: "Confirm your password",
                              contentPadding: const EdgeInsets.all(10),
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)))),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: Consumer(
                              builder: (context, ref, child) {
                                final isLoading = ref.watch(isLoadingProvider);
                                return ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)))),
                                    onPressed: () async {
                                      final result = await ref
                                          .read(authStateProvider.notifier)
                                          .register(
                                              _emailController.text,
                                              _passwordController.text,
                                              _usernameController.text);
                                      if (mounted) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          content: Text(result.message),
                                        ));
                                      }
                                      if (mounted) {
                                        if (result == AuthResult.success) {
                                          Navigator.pop(context);
                                        }
                                      }
                                    },
                                    child: isLoading
                                        ? const CircularProgressIndicator(
                                            color: Colors.white,
                                          )
                                        : const Text("Sign Up",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold)));
                              },
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Already have an account?"),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Login"),
                            )
                          ],
                        ))
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
