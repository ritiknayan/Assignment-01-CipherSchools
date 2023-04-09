import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cipherschools/card_details.dart';
import 'package:cipherschools/constants.dart';
import 'package:cipherschools/home_page.dart';
import 'package:cipherschools/stacked_widgets.dart';
import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CardDetails> cardList = [
    CardDetails(
      imagePath: "assets/projects.png",
      iconTitle: "Free",
      cardTitle: "Projects",
      titleDescription:
          "Get hands on experience with real-time projects guided by expert mentors!",
    ),
    CardDetails(
      imagePath: "assets/mentors.png",
      iconTitle: "Free",
      cardTitle: "Mentors",
      titleDescription:
          "Start learnning from the mentors coming from giant corporations like Microsoft, Google, Amazon, Paypal, etc!",
    ),
    CardDetails(
      imagePath: "assets/qratedcontent.png",
      iconTitle: "Free",
      cardTitle: "Q-rated Content",
      titleDescription: "Unlock quality content with our Q-rated content!",
    ),
    CardDetails(
      imagePath: "assets/cipherpointsNo.png",
      iconTitle: "Free",
      cardTitle: "Earn CipherPoints",
      titleDescription:
          "Earn exclusive rewards by developing your skills with us!",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Colors.white70,
      backgroundColor: kHomeScaffoldBackgroundColor,
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
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 1,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {
                showSimpleDialog(context);
              },
              icon: const Icon(
                Icons.sort_outlined,
                color: Colors.black,
                size: 30,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Text.rich(TextSpan(

            //   text: "Welcome to ",
            //   style: const TextStyle(
            //     color: Colors.black,
            //     fontSize: 34
            //   ),
            // children: <TextSpan>[
            //   TextSpan(text: "the future ", style: const TextStyle(color:Color(0xffF3912E) ))
            // ]))

            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Welcome to ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "the Future",
                  style: TextStyle(
                      color: kTextColor,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "of Learning! ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
                // Text(
                //   "the Future",
                //   style: TextStyle(
                //     color: kTextColor,
                //       fontSize: 32,
                //       fontWeight: FontWeight.bold
                //   ),
                // )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Start Learning by best creators for",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text(
                //   "absolutely Free",
                //   style: TextStyle(color: kTextColor, fontSize: 20),
                // )
                SizedBox(
                  child: DefaultTextStyle(
                    style: const TextStyle(color: kTextColor, fontSize: 20),
                    child: AnimatedTextKit(animatedTexts: [
                      TyperAnimatedText('absolutely Free |')
                    ]),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildStackedImages(),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "50+",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Mentors",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
                const Card(
                  color: Colors.grey,
                  elevation: 0,
                  child: SizedBox(
                    height: 45,
                    width: 0.7,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "4.8/5",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.star,
                          color: kTextColor,
                          size: 15,
                        ),
                        Icon(
                          Icons.star,
                          color: kTextColor,
                          size: 15,
                        ),
                        Icon(
                          Icons.star,
                          color: kTextColor,
                          size: 15,
                        ),
                        Icon(
                          Icons.star,
                          color: kTextColor,
                          size: 15,
                        ),
                        Icon(
                          Icons.star_half,
                          color: kTextColor,
                          size: 15,
                        ),
                        Text(
                          "Ratings",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: size.height * 0.065,
              width: size.width * 0.7,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: kTextColor,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Start Learning Now",
                      style: TextStyle(fontSize: 22),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 22,
                    ),
                  ],
                ),
              ),
            ),
            // ListView(
            //   scrollDirection: Axis.horizontal,
            //   children: [
            //     Container(
            //       height: 200,
            //       width: 200,
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(20),
            //           color: Colors.black),
            //       child:const Text("CARD"),
            //     )
            //   ],
            // ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: size.width,
              height: 250,
              child: ScrollSnapList(
                itemBuilder: _buildCard,
                itemCount: cardList.length,
                itemSize: 200,
                onItemFocus: (index) {},
                dynamicItemSize: true,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(5),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context, int index) {
    CardDetails cardDetails = cardList[index];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        // margin: const EdgeInsets.all(20),
        color: kCardColor,
        elevation: 12,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    child: Image(
                      image: AssetImage(cardDetails.imagePath),
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Container(
                    padding: const EdgeInsets.all(1),
                    height: 40,
                    width: 80,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      color: kTextColor,
                      child: Text(
                        cardDetails.iconTitle,
                        style: const TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    cardDetails.cardTitle,
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(
                    width: 200,
                    child: Text(
                      cardDetails.titleDescription,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          overflow: TextOverflow.clip),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildStackedImages() {
  final double size = 50;
  final urlImages = [
    'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80',
    'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
    'https://images.unsplash.com/photo-1616766098956-c81f12114571?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
  ];

  Widget buildImage(String urlImage) {
    const double borderSize = 5;
    return ClipOval(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(borderSize),
        child: ClipOval(
          child: Image.network(
            urlImage,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  final items = urlImages.map((urlImage) => buildImage(urlImage));

  return StackedWidgets(
    items: items.toList(),
    size: size,
  );
}

// Widget ReusableInformationCard() {
//   return Container(
//     color: Colors.black,
//     width: 30,
//   );
// }

