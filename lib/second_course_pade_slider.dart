// ignore_for_file: public_member_api_docs, sort_constructors_first
class SecondCoursePageSlider {
  final int id;
  final String buttonTitle;
  final String title;

  final String description;
  final String bottomTitle;
  final String imageUrl;
  final String bottomDescription;

  SecondCoursePageSlider({
    required this.id,
    required this.buttonTitle,
    required this.title,
    required this.description,
    required this.bottomTitle,
    required this.imageUrl,
    required this.bottomDescription,
  });
}

List<SecondCoursePageSlider> secondcoursePageSliderList = [
  SecondCoursePageSlider(
    id: 1,
    title: "FREE Mock IELTS/TOEFL",
    description: "AI generated feedback...  Test duration 30 min",
    bottomTitle: "Languify",
    imageUrl:
        "https://images.pexels.com/photos/67112/pexels-photo-67112.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    buttonTitle: "Languify",
    bottomDescription: "express and excel",
  ),
  SecondCoursePageSlider(
    id: 2,
    title: "Web Developement",
    description: " No. of videos: 138",
    bottomTitle: "Harshit Vashisth",
    imageUrl:
        "https://images.pexels.com/photos/4498455/pexels-photo-4498455.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    buttonTitle: "Web Developement",
    bottomDescription: "Instructor",
  ),

  // SecondCoursePageSlider(
  //     id: 3,
  //     title: "Full-stack developement using MERN",
  //     description: "Web Developement",
  //     bottomTitle: "CipherSchools",
  //     imageUrl:
  //         "https://images.pexels.com/photos/577585/pexels-photo-577585.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  //     buttonTitle: "Watch"),
  // SecondCoursePageSlider(
  //     id: 4,
  //     title: "App developement with Flutter",
  //     description: "App Developement",
  //     bottomTitle: "Aditya Thakur",
  //     imageUrl:
  //         "https://images.pexels.com/photos/1229861/pexels-photo-1229861.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  //     buttonTitle: "Watch"),
];
