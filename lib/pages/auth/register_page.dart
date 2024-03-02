import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isObscure = true;
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
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5)))),
                              onPressed: () {},
                              child: const Text("Sign Up",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold))),
                        ),
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
