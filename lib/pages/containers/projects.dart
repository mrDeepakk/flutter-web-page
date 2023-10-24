import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: mobileProject,
      desktop: desktopProject,
      tablet: desktopProject,
    );
  }
}

Widget mobileProject(BuildContext context) {
  w = MediaQuery.of(context).size.width;
  h = MediaQuery.of(context).size.height;
  String disc = '''🎥🌟 Create in a Snap:
Instantly unleash your creativity with our user-friendly video creation tools. With Short Reels, you can easily record, edit, and enhance your videos with filters, effects, and music. Craft compelling stories in seconds!
🤝 Connect with the Community:
Join a vibrant community of content creators and viewers. Interact with users through likes, comments, and shares. Connect with like-minded individuals and build your fan base.''';
  String img =
      "https://images.unsplash.com/photo-1596346599094-4dfa5c61fd0d?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";
  return Column(
    children: [
      SizedBox(
        height: 20,
      ),
      Text(
        "Projects",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: h! / 20),
      ),
      Padding(
        padding: const EdgeInsets.all(16),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
              ),
            ],
          ),
          child: Material(
            type: MaterialType.transparency,
            child: InkWell(
              onTap: () async => {
                if (await canLaunchUrl(
                    Uri.https("github.com", "/mrDeepakk/Shorts/")))
                  {
                    await launchUrl(
                        Uri.https("github.com", "/mrDeepakk/Shorts/")),
                  }
              },
              onHover: (hover) {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 200,
                    child: Image.network(
                      img,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(
                    height: h! / 40,
                  ),
                  Padding(
                    padding: EdgeInsets.all(h! / 40),
                    child: Text(
                      "Reels Application",
                      style: TextStyle(
                          fontSize: w! / 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      maxLines: 15,
                      overflow: TextOverflow.fade,
                      disc,
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 20, backgroundColor: Colors.blue),
                      onPressed: () async => {
                        if (await canLaunchUrl(
                            Uri.https("github.com", "/mrDeepakk/")))
                          {
                            await launchUrl(
                                Uri.https("github.com", "/mrDeepakk/")),
                          }
                      },
                      child: Text(
                        "See More!",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

Widget desktopProject(BuildContext context) {
  String disc2 =
      "TaskMaster is your go-to solution for managing tasks and staying organized in your busy life. This powerful to-do app is designed to help you streamline your daily tasks, prioritize your activities, and achieve your goals with ease. Say goodbye to the chaos of sticky notes and scattered lists; TaskMaster is here to simplify your life.";
  String disc1 = '''🎥🌟 Create in a Snap:
Instantly unleash your creativity with our user-friendly video creation tools. With Short Reels, you can easily record, edit, and enhance your videos with filters, effects, and music. Craft compelling stories in seconds!
🤝 Connect with the Community:
Join a vibrant community of content creators and viewers. Interact with users through likes, comments, and shares. Connect with like-minded individuals and build your fan base.''';
  String img1 =
      "https://images.unsplash.com/photo-1596346599094-4dfa5c61fd0d?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";
  String img2 =
      "https://plus.unsplash.com/premium_photo-1681487870238-4a2dfddc6bcb?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";
  return Column(
    children: [
      SizedBox(
        height: 20,
      ),
      Text(
        "Projects",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: h! / 20),
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ProjectCard(
              title: 'Reels Application',
              description: disc1,
              imageUrl: img1,
            ),
            ProjectCard(
              title: 'Todo Application',
              description: disc2,
              imageUrl: img2,
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () async => {
                if (await canLaunchUrl(Uri.https("github.com", "/mrDeepakk/")))
                  {
                    await launchUrl(Uri.https("github.com", "/mrDeepakk/")),
                  }
              },
              child: Text(
                "See More",
                style: TextStyle(fontSize: 19, color: Colors.black),
              ),
            )
            // Add more ProjectCard widgets for additional projects
          ],
        ),
      ),
    ],
  );
}

class ProjectCard extends StatefulWidget {
  final String title;
  final String description;
  final String imageUrl;

  ProjectCard({
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: isHovered ? Colors.blue : Colors.grey,
            blurRadius: 5,
          ),
        ],
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: () async => {
            if (await canLaunchUrl(Uri.https("github.com", "/mrDeepakk/")))
              {
                await launchUrl(Uri.https("github.com", "/mrDeepakk/")),
              }
          },
          onHover: (hover) {
            setState(() {
              isHovered = hover;
            });
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: w! / 4,
                height: h! / 3,
                child: Image.network(
                  widget.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        widget.title,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        widget.description,
                        style: TextStyle(fontSize: 19),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
