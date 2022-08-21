import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:medibuddy/components/bottom_navbar.dart';
import 'package:medibuddy/components/side_drawer.dart';
import 'package:medibuddy/components/carousel_slide.dart';
import 'package:medibuddy/constants/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:medibuddy/constants/counsel.dart';
import 'package:medibuddy/screens/percentage_indicator_screen.dart';
import 'package:sentiment_dart/sentiment_dart.dart';
import 'package:medibuddy/components/cousel_main_screen.dart';

class Counsel extends StatefulWidget {
  const Counsel({Key? key}) : super(key: key);
  static const id = 'counsel_screen';

  @override
  State<Counsel> createState() => _CounselState();
}

class _CounselState extends State<Counsel> {
  CarouselController buttonCarouselController = CarouselController();
  double avg = 0.0;
  List answers = List.generate(kCounselQuestions.length, (index) => "");
  List scores = List.generate(kCounselQuestions.length, (index) => 0.0);
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: const Text('Counsel'),
        leading: const BackButton(
          color: kSecondaryColor,
        ),
      ),
      drawer: const SideDrawer(),
      bottomNavigationBar: const BottomNavbar(),
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: CarouselSlider(
          carouselController: buttonCarouselController,
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height,
            viewportFraction: 1,
            enableInfiniteScroll: false,
            scrollDirection: Axis.vertical,
          ),
          items: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: CounselMain(
                onPress: () {
                  buttonCarouselController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease);
                },
              ),
            ),
            ...kCounselQuestions.asMap().entries.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Slide(
                        text: i.value['text'],
                        buttonText: 'Next',
                        onPress: () {
                          buttonCarouselController.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.ease);
                        },
                        onChange: (value) {
                          setState(() {
                            answers[i.key] = value;
                            if (answers[i.key].length != 0) {
                              scores[i.key] =
                                  Sentiment.analysis(value, emoji: true).score;
                            }
                          });
                        },
                      ),
                    ],
                  );
                },
              );
            }).toList(),
            Slide(
              text: 'Are you sure you want to submit?',
              buttonText: 'Submit',
              textField: false,
              onPress: () {
                //Take avg of values in score array
                try {
                  var sum = 0.0;
                  for (var element in scores) {
                    sum += element;
                  }
                  avg = sum / scores.length;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          MyProgressIndicator(result: (avg * 100)),
                    ),
                  );
                  setState(() {
                    answers =
                        List.generate(kCounselQuestions.length, (index) => "");
                    scores =
                        List.generate(kCounselQuestions.length, (index) => "");
                  });
                } catch (e) {
                  if (kDebugMode) {
                    print(e);
                  }
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
