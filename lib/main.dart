import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:rural_education/src/constants/colors.dart';
import 'package:rural_education/src/features/authentication/controllers/on_boarding_controller.dart';
import 'package:rural_education/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:rural_education/src/utils/theme/theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: OnBoardingScreen(),
    );
    // asdhaj
  }
}

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  get child => null;

  @override
  Widget build(BuildContext context) {
    final obController = OnBoardingController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            // as;jdlajsdl
            pages: obController.pages,
            enableSideReveal: true,
            liquidController: obController.controller,
            onPageChangeCallback: obController.onPageChangedCallback,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            waveType: WaveType.circularReveal,
          ),

          Positioned(
            bottom: 60.0,
            child: OutlinedButton(
              onPressed: () => obController.animateToNextSlide(),
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.black26),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                onPrimary: Colors.white,
              ),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                    color: tDarkColor, shape: BoxShape.circle),
                child: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () => obController.skip(),
              child: const Text("Skip", style: TextStyle(color: Colors.grey)),
            ),
          ),
          Obx(
            () => Positioned(
              bottom: 10,
              // asdhashdkasj
              child: AnimatedSmoothIndicator(
                  count: 3,
                  activeIndex: obController.currentPage.value,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: Color(0xff272727),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
