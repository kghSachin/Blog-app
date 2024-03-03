import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  late final PageController _pageController;
  bool onLastPage = false;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              if (index == 3) {
                setState(() {
                  onLastPage = true;
                });
              } else {
                setState(() {
                  onLastPage = false;
                });
              }
            },
            controller: _pageController,
            children: [
              Container(
                color: Colors.red,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LottieBuilder.asset("assets/lottie/startup.json"),
                  ),
                ),
              ),
              Container(
                color: Colors.green,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child:
                        LottieBuilder.asset("assets/lottie/tea_animation.json"),
                  ),
                ),
              ),
              Container(
                color: Colors.blue,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LottieBuilder.asset("assets/lottie/learn_more.json"),
                  ),
                ),
              ),
              Container(
                color: Colors.blue,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LottieBuilder.asset(
                      "assets/lottie/get_started.json",
                      errorBuilder: (context, error, stackTrace) {
                        return const CircularProgressIndicator();
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 24,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                children: [
                  OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                        const BorderSide(
                          color: Color(0xFFC5CFDB),
                        ),
                      ),
                      textStyle: MaterialStateProperty.all<TextStyle>(
                        const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white
                              // Colors.purple,
                              ),
                    ),
                    onPressed: () {
                      if (!onLastPage) {
                        _pageController.jumpToPage(3);
                      } else {
                        _pageController.previousPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      }
                    },
                    child:
                        !onLastPage ? const Text("Skip") : const Text("Prev"),
                  ),
                  const Spacer(),
                  OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                        const BorderSide(
                          color: Color(0xFFC5CFDB),
                        ),
                      ),
                      textStyle: MaterialStateProperty.all<TextStyle>(
                        const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white
                              // Colors.purple,
                              ),
                    ),
                    onPressed: () {
                      if (onLastPage) {
                        Navigator.pop(context);
                      } else {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      }
                    },
                    child:
                        onLastPage ? const Text("Finish") : const Text("Next"),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 120,
              left: MediaQuery.of(context).size.width / 2 - 42,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedContainer(
                    height: 16,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    duration: const Duration(milliseconds: 300),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  AnimatedContainer(
                    height: 16,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    duration: const Duration(milliseconds: 300),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  AnimatedContainer(
                    height: 16,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    duration: const Duration(milliseconds: 300),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  AnimatedContainer(
                    height: 16,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    duration: const Duration(milliseconds: 300),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
