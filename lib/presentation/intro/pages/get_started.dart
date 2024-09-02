import 'package:app/common/widgets/button/basic_app_button.dart';
import 'package:app/core/configs/assets/app_images.dart';
import 'package:app/core/configs/theme/app_colors.dart';
import 'package:app/core/configs/assets/app_vectors.dart';
import 'package:app/presentation/choose_mode/pages/choose_mode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:app/presentation/choose_mode/pages/choose_mode.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(AppImages.introBG))),
          ),
          Container(
            color: Colors.black.withOpacity(0.15),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(AppVectors.logo)),
                const Spacer(),
                const Text(
                  'Enjoy listening To Music',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'There are millions of tracks and episodes on Spotify. So whether you’re behind the wheel, working out, partying or relaxing, the right music or podcast is always at your fingertips. Choose what you want to listen to, or let Spotify surprise you.',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey,
                      fontSize: 13),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),

                // To the ChooseModePage
                BasicAppButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ChooseModePage()));
                    },
                    title: 'Get Started',
                    height: 80)
              ],
            ),
          )
        ],
      ),
    );
  }
}
