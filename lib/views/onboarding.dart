import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:gym/utils.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

PageController _controller = PageController();

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              Container(
                color: dark1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/image/ob1.png'),
                      width: 500,
                    ),
                   const SizedBox(height: 200,),
                  Text(
                    "MEET YOUR COACH," , style: mobileH1,)
                  ],
                ),
              ),
              Container(
                color: Colors.blue,
              ),
            ],
          ),
          //indicators

          Container(
            alignment: Alignment(0, 0.75),
            child: SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: const ExpandingDotsEffect(
              dotColor: dark3,
              activeDotColor: primary,
            ),
          ))
        ],
      ),
    );
  }
}
