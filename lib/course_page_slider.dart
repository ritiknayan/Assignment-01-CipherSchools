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
      imageUrl:
          "https://images.pexels.com/photos/2653362/pexels-photo-2653362.jpeg",
      buttonTitle: "Watch"),
  CoursePageSlider(
      id: 2,
      title: "FREE Mock IELTS/TOEFL",
      cardTitle: "Assesment test",
      iconTitle: "Languify",
      imageUrl:
          "https://images.pexels.com/photos/169573/pexels-photo-169573.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      buttonTitle: "Try Now"),
  CoursePageSlider(
      id: 3,
      title: "Full-stack developement using MERN",
      cardTitle: "Web Developement",
      iconTitle: "CipherSchools",
      imageUrl:
          "https://images.pexels.com/photos/577585/pexels-photo-577585.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      buttonTitle: "Watch"),
  CoursePageSlider(
      id: 4,
      title: "App developement with Flutter",
      cardTitle: "App Developement",
      iconTitle: "Aditya Thakur",
      imageUrl:
          "https://images.pexels.com/photos/1229861/pexels-photo-1229861.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      buttonTitle: "Watch"),
];
