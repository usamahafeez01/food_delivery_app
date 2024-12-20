class OnBoardingContent {
  String image;
  String title;
  String description;

  OnBoardingContent(this.image, this.title, this.description);
}

List<OnBoardingContent> contents = [
  OnBoardingContent("lib/images/screen1.png", "Select  from Our\n    Best Menu",
      "Pick your food from our menu\n    More than 35 times"),
  OnBoardingContent("lib/images/screen2.png", "Easy and Online payment",
      "You can pay cash on delivery and\n   Card payment is available "),
  OnBoardingContent("lib/images/screen3.png",
      "Quick delivery at your doorsteps ", "Deliver food at your\n  Door steps")
];
