import 'package:chiya_startup/pages/auth/register_page.dart';
import 'package:chiya_startup/pages/home/home_page.dart';
import 'package:chiya_startup/server/enum/auth_enum.dart';
import 'package:chiya_startup/state/providers/auth_state_provider.dart';
import 'package:chiya_startup/state/providers/is_loading_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool _isObscure = true;
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 70,
            ),
            Center(
              child: Column(
                children: [
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
                  const SizedBox(
                    height: 30,
                  ),
                  const Divider(color: Colors.grey),
                  const SizedBox(
                    height: 30,
                  ),
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
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 30, top: 20, right: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Login",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text("Email or Username",
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
                            height: 20,
                          ),
                          Text(
                            "Password",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const SizedBox(
                            height: 10,
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
                            height: 40,
                          ),
                          Consumer(
                            builder: (context, ref, child) {
                              return SizedBox(
                                height: 50,
                                width: MediaQuery.of(context).size.width,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)))),
                                  onPressed: () async {
                                    final result = await ref
                                        .read(authStateProvider.notifier)
                                        .login(_emailController.text,
                                            _passwordController.text);
                                    if (mounted) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              content: Text(result.message)));
                                    }
                                    if (result == AuthResult.success) {
                                      if (!mounted) {
                                        return;
                                      } else {
                                        Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                                builder: (_) =>
                                                    const HomePage()),
                                            (route) => false);
                                      }
                                    }
                                  },
                                  child: Consumer(
                                    builder: (context, ref, child) {
                                      final isLoading =
                                          ref.watch(isLoadingProvider);
                                      return isLoading
                                          ? const CircularProgressIndicator(
                                              color: Colors.white,
                                            )
                                          : const Text("Login",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold));
                                    },
                                  ),
                                ),
                              );
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Don't have an account?"),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const RegisterPage()));
                                },
                                child: const Text("Sign Up"),
                              )
                            ],
                          ))
                        ],
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
