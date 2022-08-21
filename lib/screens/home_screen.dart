import 'package:flutter/material.dart';
import 'package:medibuddy/blocs/auth_bloc.dart';
import 'package:medibuddy/components/bottom_navbar.dart';
import 'package:medibuddy/components/side_drawer.dart';
import 'package:medibuddy/constants/colors.dart';
import 'package:medibuddy/components/image_card.dart';
import 'package:medibuddy/components/notification_card.dart';
import 'package:medibuddy/components/heading.dart';
import 'package:medibuddy/screens/bmi_screen.dart';
import 'package:medibuddy/screens/breast_cancer_prediction.dart';
import 'package:medibuddy/screens/counsel_screen.dart';
import 'package:medibuddy/screens/heart_predict_screen.dart';
import 'package:medibuddy/screens/ppg_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const id = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    AuthBloc authBloc = Provider.of<AuthBloc>(context);
    // print(Sentiment.analysis('you beautiful 😒', emoji: true));
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: const Text('MediBuddy'),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
        ],
      ),
      drawer: const SideDrawer(),
      bottomNavigationBar: const BottomNavbar(),
      backgroundColor: kPrimaryColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(
              MediaQuery.of(context).size.height / 25,
              MediaQuery.of(context).size.height / 25,
              0,
              MediaQuery.of(context).size.height / 25,
            ),
            child: Text(
              'Welcome\n${authBloc.name != "" ? authBloc.name.split(' ')[0] : ""}!',
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(35.0),
            decoration: const BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50.0),
                topRight: Radius.circular(50.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Heading(text: 'Tools'),
                Divider(
                  color: kBackgroundColor,
                ),
                IconCards(),
              ],
            ),
          ),
          // Container(
          //   padding: const EdgeInsets.all(35.0),
          //   decoration: const BoxDecoration(
          //     color: kBackgroundColor,
          //   ),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: <Widget>[
          //       Heading(
          //         text: 'Notifications',
          //         icon: Icons.notifications,
          //         onPress: () {},
          //       ),
          //       const Divider(
          //         color: kBackgroundColor,
          //       ),
          //       const NotificationCard(
          //         title: 'New Task',
          //         subtitle: 'You have a new task',
          //       ),
          //       const NotificationCard(
          //         title: 'New Task',
          //         subtitle: 'You have a new task',
          //       ),
          //       const NotificationCard(
          //         title: 'New Task',
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}

class IconCards extends StatelessWidget {
  const IconCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ImageCard(
                onPress: () {
                  Navigator.pushNamed(context, BMICalculator.id);
                },
                text: "BMI",
                image: "assets/images/BMI.png"),
            ImageCard(
                onPress: () {
                  Navigator.pushNamed(context, Counsel.id);
                },
                text: "Counsel",
                image: "assets/images/counsel.png"),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 35,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ImageCard(
                onPress: () {
                  Navigator.pushNamed(context, Ppgscreen.id);
                },
                text: "PPG",
                image: "assets/images/heartbeat.png"),
          ],
        ),
        const Heading(text: 'Predictions'),
        const Divider(
          color: kBackgroundColor,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ImageCard(
                onPress: () {
                  Navigator.pushNamed(context, HeartPredict.id);
                },
                text: "Heart Failure",
                image: "assets/images/HeartFailure.png"),
            ImageCard(
                onPress: () {
                  Navigator.pushNamed(context, BreastCancerPredict.id);
                },
                text: "Breast Cancer",
                image: "assets/images/BreastCancer.png"),
          ],
        ),
      ],
    );
  }
}
