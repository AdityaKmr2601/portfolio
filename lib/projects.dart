import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "PROJECTS",
          style: TextStyle(letterSpacing: 2, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Card(
              description:
                  "An app to calculate\nthe Body mass Index by inputting\nthe height and age of the user",
              title: "BMI Calculator",
              image: "calculator.png",
              url: Uri.parse("https://github.com/AdityaKmr2601/bmi_calculator"),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              description:
                  "An app to play\na quiz game with point system\nand beautiful ui.",
              title: "Quizler",
              image: "quiz.png",
              url: Uri.parse("https://github.com/AdityaKmr2601/Quizler.git"),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              description:
                  "An app to do\na group chat with everyone\nthat logins in the app\nusing their account.",
              title: "FlashChat",
              image: "chatting.png",
              url: Uri.parse("https://github.com/AdityaKmr2601/flashchat.git"),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              description:
                  "An identity card app\nthat I made while learning\nFlutter.",
              title: "My Card",
              image: "cardown.png",
              url: Uri.parse("https://github.com/AdityaKmr2601/my_card_own"),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              description:
                  "A dating app\nthat'll help people to connect with each\nother and like others and chat\nwith them.",
              title: "Matchers Deck",
              image: "match.png",
              url: Uri.parse(
                  "https://github.com/AdityaKmr2601/matchers_deck.git"),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      )),
    );
  }
}

class Card extends StatelessWidget {
  Card(
      {super.key,
      required this.image,
      required this.title,
      required this.description,
      this.sc = 5,
      required this.url});

  String image;
  String title;
  String description;
  double sc;
  final Uri url;

  Future<void> _launchURL(url) async {
    await launchUrl(url);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
          ),
          BoxShadow(
            color: Colors.black,
            spreadRadius: -5.0,
            blurRadius: 12.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "images/$image",
              scale: sc,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name: $title",
                  style: const TextStyle(color: Colors.black, fontSize: 20),
                ),
                const SizedBox(height: 10),
                Text(
                  "Description: $description",
                  style: const TextStyle(
                      fontSize: 10, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            // GestureDetector(
            //   onTap: () {},
            //   child: CircleAvatar(
            //     backgroundColor: Colors.white,
            //     child: Image.asset(
            //       'images/GitHub.png',
            //     ),
            //   ),
            // ),
            TextButton(
              onPressed: () {
                _launchURL(url);
              },
              child: Column(
                children: [
                  Image.asset(
                    'images/GitHub.png',
                    scale: 6,
                  ),
                  Text("Git Link")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
