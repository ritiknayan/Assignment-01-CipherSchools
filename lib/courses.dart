import 'package:cipherschools/constants.dart';
import 'package:cipherschools/course_page_slider.dart';
import 'package:cipherschools/second_course_pade_slider.dart';

import 'package:flutter/material.dart';

class Courses extends StatefulWidget {
  const Courses({super.key});

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  List<String> items = <String>[
    'Popular',
    'Latest',
  ];

  String dropdownValue = 'Popular';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Container(
            child: const Image(
              image: AssetImage(
                "assets/logo.png",
              ),
              // // height: size.width * 0.05,
              // width: size.width * 0.05,
            ),
          ),
        ),
        title: const Text(
          "CipherSchools",
          // textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        backgroundColor: kAppBarBackgroundColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 16.0,
            ),
            height: 200,
            decoration: const BoxDecoration(color: Colors.white),
            child: PageView.builder(
                controller: PageController(viewportFraction: 01),
                itemCount: coursePageSliderList.length,
                itemBuilder: (context, index) {
                  return Container(
                    // margin: const EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        image:
                            NetworkImage(coursePageSliderList[index].imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: DefaultTextStyle(
                      style:
                          const TextStyle(color: Colors.white, fontSize: 20.0),
                      child: Stack(children: [
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                coursePageSliderList[index].title.toUpperCase(),
                              ),
                              // Container(
                              //   width: 200,
                              //   child: Text(
                              //     coursePageSliderList[index]
                              //         .iconTitle
                              //         .toUpperCase(),
                              //     textAlign: TextAlign.center,
                              //   ),
                              // )
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: kCardBackgroundColor),
                                    child: Text(
                                        coursePageSliderList[index].cardTitle),
                                  ),
                                ],
                              ),
                              // const SizedBox(
                              //   height: 5,
                              // ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(coursePageSliderList[index].iconTitle),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: kTextColor),
                                    child: Text(coursePageSliderList[index]
                                        .buttonTitle),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ),
                  );
                }),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Recommended Courses",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              const SizedBox(
                width: 70,
              ),
              Card(
                color: Colors.black87,
                child: DropdownButton<String>(
                  underline: Divider(color: Colors.black),
                    elevation: 10,
                    icon: const Icon(Icons.arrow_downward),
                    dropdownColor: Colors.black,
                    iconSize: 18,
                    style: const TextStyle(color: Colors.white),
                    value: dropdownValue,
                    items: items.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                          value: value, child: Text(value));
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    }),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 16.0,
            ),
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: const BoxDecoration(color: kScaffoldBackgroundColor),
            child: PageView.builder(
                controller: PageController(viewportFraction: 0.5),
                itemCount: secondcoursePageSliderList.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // ClipRRect(
                      //   borderRadius: BorderRadius.circular(20),
                      //   child: Container(
                      //     decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(20.0),
                      //       image: DecorationImage(
                      //         image: NetworkImage(
                      //             secondcoursePageSliderList[index].imageUrl),
                      //         fit: BoxFit.cover,
                      //       ),
                      //     ),
                      //   ),
                      // ),

                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Image(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                secondcoursePageSliderList[index].imageUrl)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                kSecondPageSliderButtonTitleBackgroundColor),
                        child:
                            Text(secondcoursePageSliderList[index].buttonTitle),
                      ),
                      Text(
                        secondcoursePageSliderList[index].title,
                        style: const TextStyle(color: Colors.white),
                      ),
                      Text(
                        secondcoursePageSliderList[index].description,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            overflow: TextOverflow.clip),
                      ),
                      Text(
                        secondcoursePageSliderList[index].bottomTitle,
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        secondcoursePageSliderList[index].bottomDescription,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 5.5,
                        ),
                      )
                    ],
                  );
                }),
          ),
        ],
      )),
    );
  }
}
