import 'package:flutter/material.dart';
import 'package:weather_api/core/util/app_colors.dart';
import 'package:weather_api/core/util/assets/app_assets.dart';
import 'package:weather_api/core/util/fonts/app_fonts.dart';
import 'package:weather_api/features/weather/presentation/widgets/custom_text_widget.dart';
import 'package:weather_api/features/weather/presentation/widgets/iconed_text_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: AppColors.dayColor,
          body: Center(
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search...',
                        hintStyle: TextStyle(color: Colors.black54),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                      ),
                      style: const TextStyle(color: Colors.black),
                      onSubmitted: (value) {
                        // Handle the search input
                      },
                    ),
                  ),
                ),
                const Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomTextWidget(
                        text: "Cairo",
                        color: Colors.black,
                        fontSize: 33,
                        fontFamily: AppFonts.gabriolaFont,
                        fontWeight: FontWeight.bold,
                      ),
                      CustomTextWidget(
                        text: "Monday 7:00 AM",
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: AppFonts.courierNewItalic,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Image(
                    image: AssetImage(Assets.assetsImagesCloudDay),
                    width: 120,
                    height: 120,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomTextWidget(
                        text: "22°C",
                        color: Colors.black,
                        fontSize: 35,
                        fontFamily: AppFonts.courierNewItalic,
                        fontWeight: FontWeight.bold,
                      ),
                      CustomTextWidget(
                        text: "GOOD MORNING",
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: AppFonts.courierNewItalic,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconedTextWidget(
                              text: 'UV',
                              icon: Icons.sunny,
                              iconColor: Colors.yellow,
                              textColor: Colors.black,
                            ),
                            CustomTextWidget(
                                color: Colors.black,
                                fontSize: 22,
                                fontFamily: AppFonts.courierNewItalic,
                                fontWeight: FontWeight.bold,
                                text: '0')
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconedTextWidget(
                              text: 'WIND',
                              icon: Icons.air,
                              iconColor: Colors.grey,
                              textColor: Colors.black,
                            ),
                            CustomTextWidget(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: AppFonts.courierNewItalic,
                                fontWeight: FontWeight.bold,
                                text: '15 km/hr')
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconedTextWidget(
                              text: 'HUMDITY',
                              icon: Icons.water_drop_sharp,
                              iconColor: Colors.blue,
                              textColor: Colors.black,
                            ),
                            CustomTextWidget(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: AppFonts.courierNewItalic,
                                fontWeight: FontWeight.bold,
                                text: '58%')
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
