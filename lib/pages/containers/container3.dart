import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';

import 'package:responsive_builder/responsive_builder.dart';

class Container3 extends StatelessWidget {
  const Container3({super.key});
  onpressed() {}

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: mobileContainer3,
      desktop: desktopContainer3,
      tablet: desktopContainer3,
    );
  }

  Widget mobileContainer3(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        SelectableText.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "Services",
                style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: h! / 20),
              ),
            ],
          ),
          textAlign: TextAlign.center,
          showCursor: false,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: w! / 30,
              color: Colors.black),
        ),
        SizedBox(
          height: h! / 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Container(
              height: 400,
              width: 300,
              child: commonCart(
                  context,
                  "Web Design",
                  '''Web development is the process of creating, building, and maintaining websites or web applications that are accessible via the internet. It involves a combination of skills, technologies, and practices to design, develop, and deploy functional and visually appealing websites or web-based solutions.''',
                  webdev,
                  onpressed),
            ),
            Container(
              height: 400,
              width: 300,
              child: commonCart(
                  context,
                  "Android/IOS",
                  '''websites or web applications that are accessible via the internet. It involves a combination of skills, technologies, and practices to design, develop, and deploy functional and visually appealing websites or web-based solutions.''',
                  appdev,
                  onpressed),
            ),
            Container(
              height: 400,
              width: 300,
              child: commonCart(
                  context,
                  "Graphic Design",
                  '''websites or web applications that are accessible via the internet. It involves a combination of skills, technologies, and practices to design, develop, and deploy functional and visually appealing websites or web-based solutions.''',
                  graphics,
                  onpressed),
            ),
            Container(
              height: 400,
              width: 300,
              child: commonCart(
                  context,
                  "Video Editing",
                  '''websites or web applications that are accessible via the internet. It involves a combination of skills, technologies, and practices to design, develop, and deploy functional and visually appealing websites or web-based solutions.''',
                  videoEditing,
                  onpressed),
            ),
          ]),
        ),
      ],
    );
  }

  Widget desktopContainer3(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Container(
      height: h,
      width: w,
      child: Column(
        children: [
          SelectableText.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "Services",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: h! / 20),
                ),
              ],
            ),
            textAlign: TextAlign.center,
            showCursor: false,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: w! / 30,
                color: Colors.black),
          ),
          SizedBox(
            height: h! / 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 400,
                    width: 300,
                    child: commonCart(
                        context,
                        "Web Design",
                        '''Web development is the process of creating, building, and maintaining websites or web applications that are accessible via the internet. It involves a combination of skills, technologies, and practices to design, develop, and deploy functional and visually appealing websites or web-based solutions.''',
                        webdev,
                        onpressed),
                  ),
                  Container(
                    height: 400,
                    width: 300,
                    child: commonCart(
                        context,
                        "Android/IOS",
                        '''websites or web applications that are accessible via the internet. It involves a combination of skills, technologies, and practices to design, develop, and deploy functional and visually appealing websites or web-based solutions.''',
                        appdev,
                        onpressed),
                  ),
                  Container(
                    height: 400,
                    width: 300,
                    child: commonCart(
                        context,
                        "Graphic Design",
                        '''websites or web applications that are accessible via the internet. It involves a combination of skills, technologies, and practices to design, develop, and deploy functional and visually appealing websites or web-based solutions.''',
                        graphics,
                        onpressed),
                  ),
                  Container(
                    height: 400,
                    width: 300,
                    child: commonCart(
                        context,
                        "Video Editing",
                        '''websites or web applications that are accessible via the internet. It involves a combination of skills, technologies, and practices to design, develop, and deploy functional and visually appealing websites or web-based solutions.''',
                        videoEditing,
                        onpressed),
                  ),
                ]),
          ),
        ],
      ),
    );
  }

  Widget commonCart(
    BuildContext context,
    String text,
    String description,
    String iconData,
    Function onPressed,
  ) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25))),
      elevation: 0,
      color: Color.fromARGB(255, 150, 173, 192),
      child: Column(children: [
        Padding(
          padding: EdgeInsets.all(5),
          child: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(iconData))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            maxLines: 10,
            textDirection: TextDirection.ltr,
            overflow: TextOverflow.clip,
            description,
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w700, color: Colors.black),
          ),
        ),
        ElevatedButton(
          onPressed: () => onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 12, 194, 255),
              elevation: 20,
              side: BorderSide(color: Colors.lightBlue)),
          child: Text(
            "Learn More !",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Colors.black),
          ),
        )
      ]),
    );
  }
}




// Container(
//               height: 400,
//               width: 300,
//               child: Card(
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(25))),
//                 elevation: 40,
//                 borderOnForeground: true,
//                 color: Color.fromARGB(255, 150, 173, 192),
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.all(5),
//                         child: Container(
//                           height: 70,
//                           width: 70,
//                           decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   fit: BoxFit.cover, image: AssetImage(dev))),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(10),
//                         child: Text(
//                           "Web Design",
//                           style: TextStyle(
//                               fontSize: 40,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(10),
//                         child: Text(
//                           maxLines: 10,
//                           textDirection: TextDirection.ltr,
//                           overflow: TextOverflow.clip,
//                           '''Web development is the process of creating, building, and maintaining websites or web applications that are accessible via the internet. It involves a combination of skills, technologies, and practices to design, develop, and deploy functional and visually appealing websites or web-based solutions.''',
//                           style: TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight.w700,
//                               color: Colors.black),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       ElevatedButton(
//                         onPressed: () => {},
//                         style: ElevatedButton.styleFrom(
//                             backgroundColor: Color.fromARGB(255, 12, 194, 255),
//                             elevation: 20,
//                             side: BorderSide(color: Colors.lightBlue)),
//                         child: Text(
//                           "Learn More !",
//                           style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.normal,
//                               color: Colors.black),
//                         ),
//                       )
//                     ]),
//               ),
//             ),