class CoursePageSlider {
  final int id;
  final String title;
  final String cardTitle;
  final String iconTitle;
  final String imageUrl;
  final String buttonTitle;
  CoursePageSlider({
    required this.id,
    required this.title,
    required this.cardTitle,
    required this.iconTitle,
    required this.imageUrl,
    required this.buttonTitle,
  });
}

List<CoursePageSlider> coursePageSliderList = [
  CoursePageSlider(
      id: 1,
      title: "Python & Django for begineers",
      cardTitle: "Programming",
      iconTitle: "CipherSchools",
      imageUrl: "assets/courseslider1.jpg",
      buttonTitle: "Watch"),
  CoursePageSlider(
      id: 2,
      title: "FREE Mock IELTS/TOEFL",
      cardTitle: "Assesment test",
      iconTitle: "Languify",
      imageUrl: "assets/courseslider2.jpg",
      buttonTitle: "Try Now"),
  CoursePageSlider(
      id: 3,
      title: "Full-stack developement using MERN",
      cardTitle: "Web Developement",
      iconTitle: "CipherSchools",
      imageUrl: "assets/courseslider3.jpg",
      buttonTitle: "Watch"),
  CoursePageSlider(
      id: 4,
      title: "App developement with Flutter",
      cardTitle: "App Developement",
      iconTitle: "Aditya Thakur",
      imageUrl: "assets/courseslider4.jpg",
      buttonTitle: "Watch"),
];
