import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartforce/datas/foryou.dart';
import 'package:mdi/mdi.dart';

//import 'package:smartforce/datas/foryou.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  CarouselController mycarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: DefaultTabController(
      length: 2,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: TabBar(
              onTap: (index) {
                // Tab index when user select it, it start from zero
              },
              tabs: [
                Tab(
                  child: Text(
                    "FOR YOU",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "TRENDING",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
            title: Center(
                child: Text(
              'Southampton',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  color: Colors.black),
            )),
          ),
          body: TabBarView(
            children: [
              Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    //  color: Colors.red,
                    child: ListView.builder(
                      itemCount: datas.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage("assets/images/image1.jpg"),
                                    maxRadius: 30,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            datas[index].name,
                                            style: TextStyle(
                                                fontSize: 23,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.verified,
                                                color: Colors.green,
                                              )),
                                        ],
                                      ),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.location_on,
                                                  color: Colors.black,
                                                )),
                                            Text(
                                              datas[index].address,
                                              style: TextStyle(
                                                  fontSize: 21,
                                                  fontWeight: FontWeight.w400),
                                            )
                                          ])
                                    ],
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Mdi.menu,
                                        color: Colors.black,
                                      ))
                                ],
                              ),
                              // CarouselSlider(
                              //     items: [],
                              //     options: CarouselOptions(
                              //       aspectRatio: 16 / 9,
                              //       viewportFraction: 0.76,
                              //       height: 500,
                              //       enableInfiniteScroll: true,
                              //       enlargeCenterPage: true,
                              //       autoPlay: false,
                              //     ))

                              CarouselSlider(
                                carouselController: mycarouselController,
                                options: CarouselOptions(
                                  aspectRatio: 2.0,
                                  viewportFraction: 1,

                                  height: 300,
                                  // enableInfiniteScroll: true,
                                  // enlargeCenterPage: true,
                                  autoPlay: false,
                                ),
                                items: datas[index].bigimage.map((i) {
                                  return Builder(
                                    builder: (BuildContext context) {
                                      return Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 5.0),
                                        child: Stack(
                                          children: [
                                            Positioned.fill(
                                              child: Image.asset(
                                                datas[index].bigimage[index],
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Icon(
                                                  Icons
                                                      .favorite_border_outlined,
                                                  color: Colors.white,
                                                  size: 35,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                }).toList(),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                datas[index].date,
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xFF0BFF85)),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 14),
                                child: Text(
                                  datas[index].eventName,
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Color(0xFF000201),
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Icon(
                                          CupertinoIcons.money_dollar,
                                          size: 35,
                                        ),
                                        Text(
                                          datas[index].price,
                                          style: TextStyle(fontSize: 26),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    datas[index].match,
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
              Center(
                  child: Text(
                "5",
                style: TextStyle(fontSize: 40),
              )),
            ],
          ),
        ),
      ),
    ));
  }
}
