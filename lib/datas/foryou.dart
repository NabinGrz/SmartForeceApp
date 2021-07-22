class ForYou {
  late String imgUrl;
  late String name;
  late String address;
  late List<String> bigimage;
  late String date;
  late String eventName;
  late String price;
  late String match;

  ForYou({
    required this.imgUrl,
    required this.name,
    required this.address,
    required this.bigimage,
    required this.date,
    required this.eventName,
    required this.price,
    required this.match,
  });
}

List<ForYou> datas = [
  ForYou(
      imgUrl: "assets/images/image1",
      name: "Event 361",
      address: "Robosn Stree, 21JY01",
      bigimage: [
        "assets/images/image1.jpg",
        "assets/images/image2.jpg",
        "assets/images/image1.jpg"
      ],
      date: "WED,JUNE 21 . 15:30 - 21:00 PM EDT",
      eventName: "Event 361 Presents: Iris and Zlats Show 2021",
      price: "65",
      match: "62% Match"),
  ForYou(
      imgUrl: "assets/images/image1",
      name: "Event 361",
      address: "Robosn Stree, 21JY01",
      bigimage: [
        "assets/images/image1.jpg",
        "assets/images/image2.jpg",
        "assets/images/image1.jpg"
      ],
      date: "WED,JUNE 21 . 15:30 - 21:00 PM EDT",
      eventName: "Event 361 Presents: Iris and Zlats Show 2021",
      price: "65",
      match: "62% Match"),
  ForYou(
      imgUrl: "assets/images/image1",
      name: "Event 361",
      address: "Robosn Stree, 21JY01",
      bigimage: [
        "assets/images/image1.jpg",
        "assets/images/image2.jpg",
        "assets/images/image1.jpg"
      ],
      date: "WED,JUNE 21 . 15:30 - 21:00 PM EDT",
      eventName: "Event 361 Presents: Iris and Zlats Show 2021",
      price: "65",
      match: "62% Match")
];
