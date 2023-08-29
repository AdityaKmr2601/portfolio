import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/projects.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/back.jpg"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: const Color(0xff45475A).withOpacity(0.2),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: const [
                      Text(
                        "PROFILE",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white54,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: const Color(0xff45475A).withOpacity(0.2),
                height: 250,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AvatarGlow(
                        endRadius: 70,
                        child: CircleAvatar(
                          radius: 45,
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage('images/me.jpeg'),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Aditya Kumar",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Flutter Developer",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.white54),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.white54,
                            size: 15,
                          ),
                          Text(
                            "Varanasi, Uttar Pradesh",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.white54),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 30, right: 30, top: 30, bottom: 100),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "I want to play a key role in an organization that stretches my skill and capabilities, and Challenges me to perform exceptionally in a progressive and competitive work culture.",
                          style: TextStyle(
                              fontSize: 15,
                              fontStyle: FontStyle.italic,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Divider(
                          height: 30,
                          thickness: 3,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Constants().heading(title: "SKILLS"),
                        const SizedBox(
                          height: 20,
                        ),
                        Constants().subheading(title: "Programming Languages:"),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                              ),
                              BoxShadow(
                                color: Colors.white,
                                spreadRadius: -5.0,
                                blurRadius: 12.0,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Constants().Skill(
                                      title: "C Language", image: 'c.png'),
                                  Constants().Skill(
                                      title: "Python",
                                      image: 'python.png',
                                      sc: 18,
                                      hg: 5),
                                  Constants().Skill(
                                      title: "Java", image: 'java.png', sc: 6),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Constants().Skill(
                                      title: "Dart",
                                      image: 'dart.png',
                                      sc: 7,
                                      hg: 5),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Constants().subheading(title: "Database Tools:"),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                              ),
                              BoxShadow(
                                color: Colors.white,
                                spreadRadius: -5.0,
                                blurRadius: 12.0,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Constants().Skill(
                                      title: "MySQL",
                                      image: 'mysql.png',
                                      hg: 5,
                                      sc: 17),
                                  Constants().Skill(
                                      title: "FireBase",
                                      image: 'firebase.png',
                                      sc: 7,
                                      hg: 5),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const Divider(
                          height: 30,
                          thickness: 3,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Constants().heading(title: "PROJECTS"),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ProjectsPage()));
                              },
                              child: const Text(
                                "See All >",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                              ),
                              BoxShadow(
                                color: Colors.white,
                                spreadRadius: -5.0,
                                blurRadius: 12.0,
                              ),
                            ],
                          ),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Constants().Project(
                                    title: "Quizler", image: "quiz.png"),
                                const SizedBox(width: 30),
                                Constants().Project(
                                    title: "Flash Chat", image: 'chatting.png'),
                                const SizedBox(width: 30),
                                Constants().Project(
                                    title: "BMI Calculator",
                                    image: 'calculator.png'),
                                const SizedBox(width: 30),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ProjectsPage()));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      children: const [
                                        Icon(
                                          Icons.read_more_sharp,
                                          size: 70,
                                          color: Colors.blue,
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "MORE",
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const Divider(
                          height: 30,
                          thickness: 3,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Constants().heading(title: "ACADEMIC PROFILE"),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.arrow_right,
                              color: Colors.green,
                            ),
                            Constants().subheading(title: "Secondary(X)"),
                          ],
                        ),
                        const Text(
                            "I have completed my Secondary (X) from St. John's School, Marhauli, Varanasi (ICSE board) in 2019 with 69.00%."),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.arrow_right,
                              color: Colors.green,
                            ),
                            Constants().subheading(
                                title: "Senior Secondary (XII), Science"),
                          ],
                        ),
                        const Text(
                            "I have completed my Senior Secondary (XII) from Sant Atulanad Residential Academy (CBSE board) in 2021 with 71.00%."),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.arrow_right,
                              color: Colors.green,
                            ),
                            Constants().subheading(title: "B. Tech (CSE)"),
                          ],
                        ),
                        const Text(
                            "Currently, I am Pursuing B.Tech in Computer Science and Engineering from Kashi Institute of Technology, Varanasi."),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.arrow_right,
                              color: Colors.green,
                            ),
                            Constants().subheading(
                                title: "Extra-Curricular Activities"),
                          ],
                        ),
                        const Text(
                            "Currently, I am learning App Development using Flutter and Dart."),
                        const SizedBox(
                          height: 50,
                        ),
                        const Divider(
                          height: 30,
                          thickness: 3,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Constants().heading(title: "INTERNSHIPS"),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.arrow_right,
                              color: Colors.green,
                            ),
                            Constants().subheading(
                                title:
                                    "SOFTWARE DEVELOPMENT PROJECT,\nKashi Institute of Technology"),
                          ],
                        ),
                        const Text(
                          "Dec 2022 - Jan 2023",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.lightGreen),
                        ),
                        const Text(
                            "I have worked on developing a Student Management System project using Python and MySQL for a college project."),
                      ]),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(color: Color(0xff1E2126)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Contact",
                      style: TextStyle(
                          color: Colors.white, fontSize: 20, letterSpacing: 2),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 150, left: 150),
                      child: Divider(
                        color: Colors.pinkAccent,
                        thickness: 2,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        contact(
                          image: 'linkedin.png',
                          url: Uri.parse(
                              'https://www.linkedin.com/in/aditya-kumar-72218a272/'),
                        ),
                        contact(
                          image: 'insta.png',
                          sc: 70,
                          url: Uri.parse(
                              'https://www.linkedin.com/in/aditya-kumar-72218a272/'),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'images/contact logos/gmail.png',
                                scale: 90,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "adityakmr2601@gmail.com",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Image.asset(
                                  'images/contact logos/wp.png',
                                  scale: 10,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "7275305024",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}

class contact extends StatelessWidget {
  contact({required this.url, required this.image, this.sc = 10});
  final Uri url;
  String image;
  double sc;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          _launchURL(url);
        },
        child: CircleAvatar(
          maxRadius: 20,
          child: Image.asset(
            'images/contact logos/$image',
            scale: sc,
          ),
        ));
  }
}

Future<void> _launchURL(url) async {
  await launchUrl(url);
}
