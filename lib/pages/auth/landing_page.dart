import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  late final PageController _pageController;
  int selectedVal = 0;
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
                  selectedVal = index;
                  onLastPage = true;
                });
              } else {
                setState(() {
                  selectedVal = index;
                  onLastPage = false;
                });
              }
            },
            controller: _pageController,
            children: [
              Container(
                color: Colors.blueGrey,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LottieBuilder.asset("assets/lottie/startup.json"),
                  ),
                ),
              ),
              Container(
                color: Colors.blueGrey,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child:
                        LottieBuilder.asset("assets/lottie/tea_animation.json"),
                  ),
                ),
              ),
              Container(
                color: Colors.blueGrey,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LottieBuilder.asset("assets/lottie/learn_more.json"),
                  ),
                ),
              ),
              Container(
                color: Colors.blueGrey,
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
                  if (!onLastPage)
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
                          {
                            _pageController.jumpToPage(3);
                          }
                        },
                        child: const Text("Skip")),
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
              left: MediaQuery.of(context).size.width / 2 - 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedContainer(
                    height: selectedVal == 0 ? 12 : 12,
                    width: selectedVal == 0 ? 26 : 16,
                    decoration: BoxDecoration(
                      color:
                          selectedVal == 0 ? Colors.pinkAccent : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    duration: const Duration(milliseconds: 300),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  AnimatedContainer(
                    height: selectedVal == 1 ? 12 : 12,
                    width: selectedVal == 1 ? 26 : 16,
                    decoration: BoxDecoration(
                      color:
                          selectedVal == 1 ? Colors.pinkAccent : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    duration: const Duration(milliseconds: 300),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  AnimatedContainer(
                    height: selectedVal == 2 ? 12 : 12,
                    width: selectedVal == 2 ? 26 : 16,
                    decoration: BoxDecoration(
                      color:
                          selectedVal == 2 ? Colors.pinkAccent : Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    duration: const Duration(milliseconds: 300),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  AnimatedContainer(
                    height: selectedVal == 3 ? 12 : 12,
                    width: selectedVal == 3 ? 26 : 16,
                    decoration: BoxDecoration(
                      color:
                          selectedVal == 3 ? Colors.pinkAccent : Colors.white,
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
