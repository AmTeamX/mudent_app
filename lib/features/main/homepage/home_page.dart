import 'package:carousel_slider/carousel_slider.dart'; // CarouselSlider for image slides
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/gg.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:mudent_app/config/theme/theme.dart';

import 'utils/utils.dart';

// Images for the carousel
List<String> images = [
  "image-1.jpg",
  "image-2.jpg",
  "image-3.jpg",
  "image-4.jpg",
  "image-5.jpg"
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DesignSystem.g1,
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: CarouselSlider.builder(
              itemCount: images.length,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return Container(
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      images[index],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
              options: CarouselOptions(
                viewportFraction: 1,
                height: 200,
                initialPage: 0,
                autoPlay: true,
                enlargeCenterPage: true,
              ),
            ),
          ),
          Expanded(
              child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                child: const Row(
                  children: [
                    Text(
                      HomepageMsg.menuUi,
                      style: TextStyle(fontSize: DesignSystem.fontSize3),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 75,
                        height: 75,
                        decoration: const BoxDecoration(
                            color: DesignSystem.primary,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: const Center(
                          child: Iconify(
                            Ic.outline_lightbulb,
                            color: DesignSystem.g1,
                            size: 42,
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        HomepageMsg.userGuide,
                        style: TextStyle(
                            fontSize: DesignSystem.fontSize2,
                            color: DesignSystem.primary),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 75,
                        height: 75,
                        decoration: const BoxDecoration(
                            color: DesignSystem.primary,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: const Center(
                          child: Iconify(
                            Gg.enter,
                            color: DesignSystem.g1,
                            size: 42,
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        HomepageMsg.jointUnit,
                        style: TextStyle(
                            fontSize: DesignSystem.fontSize2,
                            color: DesignSystem.primary),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 75,
                        height: 75,
                        decoration: const BoxDecoration(
                            color: DesignSystem.primary,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: const Center(
                          child: Iconify(Ph.calendar_check_bold,
                              color: DesignSystem.g1, size: 44),
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        HomepageMsg.checkIn,
                        style: TextStyle(
                            fontSize: DesignSystem.fontSize2,
                            color: DesignSystem.primary),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 75,
                        height: 75,
                        decoration: const BoxDecoration(
                            color: DesignSystem.primary,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: const Center(
                            child: Iconify(
                          Ph.book_bookmark_bold,
                          color: DesignSystem.g1,
                          size: 44,
                        )),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        HomepageMsg.summary,
                        style: TextStyle(
                            fontSize: DesignSystem.fontSize2,
                            color: DesignSystem.primary),
                      )
                    ],
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(16),
                child: const Row(
                  children: [
                    Text(
                      HomepageMsg.news,
                      style: TextStyle(fontSize: DesignSystem.fontSize3),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: DesignSystem.g3,
                    border: Border.all(color: DesignSystem.primary)),
                width: 350,
                height: 250,
              )
            ],
          )),
        ],
      ),
    );
  }
}
