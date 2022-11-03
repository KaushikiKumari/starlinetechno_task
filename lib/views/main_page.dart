import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starlinetechno_task/controllers/theme_controller/theme_controller.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final color = Get.put(ThemeControllerForAll());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.backgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: color.appbarColor,
        elevation: 1,
        title: Text("StarLineTechno",
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold)),
        actions: [
          GetBuilder<ThemeControllerForAll>(
            builder: (_) => Switch(
                value: color.isDark,
                onChanged: (state) {
                  print("$state");
                  color.changeTheme(state);
                  setState(() {});
                }),
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return _buildWideContainers();
          } else {
            return _buildNormalContainer();
          }
        },
      ),
    );
  }

  Widget _buildNormalContainer() {
    return SingleChildScrollView(
        child: Column(
      children: [
        SizedBox(height: 20),
        Container(
            child: GridView.builder(
          itemCount: 8,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 0.0,
            childAspectRatio: 1.9,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 15, 20, 20),
                  child: Container(
                      decoration: BoxDecoration(
                        gradient: color.cardsgradientColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(2, 2),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: 20),
                                Text("Name  :",
                                    style: TextStyle(
                                        color: color.textColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(height: 5),
                                Text("Roll no.  :",
                                    style: TextStyle(
                                        color: color.textColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(height: 5),
                                Text("Name  :",
                                    style: TextStyle(
                                        color: color.textColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(height: 5),
                                Text("Name  :",
                                    style: TextStyle(
                                        color: color.textColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                                // SizedBox(height: 5),
                                // Divider(),
                                // SizedBox(height: 5),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    gradient: color.cardsgradientColor,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(20, 5, 20, 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            CircleAvatar(
                                              radius: 3,
                                              backgroundColor: Colors.green,
                                            ),
                                            Text("  reviewed",
                                                style: TextStyle(
                                                    color: Colors.deepPurple,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ],
                                        ),
                                        Text("  View Detail",
                                            style: TextStyle(
                                                color: Colors.blueGrey,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w800)),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      )),
                ),
                Positioned(
                  right: 5,
                  top: 4,
                  child: Container(
                    alignment: Alignment.topRight,
                    height: 30,
                    width: 150,
                    decoration: BoxDecoration(
                      gradient: color.titlecardsgradientColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(2, 2),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text("Title",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w800)),
                    ),
                  ),
                ),
              ],
            );
          },
        )),
      ],
    ));
  }

  Widget _buildWideContainers() {
    return SingleChildScrollView(
        child: Column(
      children: [
        SizedBox(height: 20),
        Container(
            child: GridView.builder(
          itemCount: 8,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 0.0,
            childAspectRatio: 1.9,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 15, 20, 20),
                  child: Container(
                      decoration: BoxDecoration(
                        gradient: color.cardsgradientColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(2, 2),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: 20),
                                Text("Name  :",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(height: 5),
                                Text("Roll no.  :",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(height: 5),
                                Text("Name  :",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(height: 5),
                                Text("Name  :",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                                // SizedBox(height: 5),
                                // Divider(),
                                // SizedBox(height: 5),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  height: 45,
                                  decoration: BoxDecoration(
                                    gradient: color.cardsgradientColor,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(20, 5, 20, 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              radius: 3,
                                              backgroundColor: Colors.green,
                                            ),
                                            Text("  reviewed",
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.w500)),
                                          ],
                                        ),
                                        Text("  View Detail",
                                            style: TextStyle(
                                                color: Colors.blueGrey,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w800)),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      )),
                ),
                Positioned(
                  right: 5,
                  top: 4,
                  child: Container(
                    alignment: Alignment.topRight,
                    height: 30,
                    width: 150,
                    decoration: BoxDecoration(
                      gradient: color.titlecardsgradientColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(2, 2),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text("Title",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w800)),
                    ),
                  ),
                ),
              ],
            );
          },
        )),
      ],
    ));
  }

  Widget protrait() {
    return SingleChildScrollView(
        child: Column(
      children: [
        SizedBox(height: 20),
        Container(
            child: GridView.builder(
          itemCount: 8,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 0.0,
            childAspectRatio: 1.9,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 15, 20, 20),
                  child: Container(
                      decoration: BoxDecoration(
                        gradient: color.cardsgradientColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(2, 2),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: 20),
                                Text("Name  :",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(height: 5),
                                Text("Roll no.  :",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(height: 5),
                                Text("Name  :",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(height: 5),
                                Text("Name  :",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                                // SizedBox(height: 5),
                                // Divider(),
                                // SizedBox(height: 5),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    gradient: color.cardsgradientColor,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(20, 5, 20, 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              radius: 3,
                                              backgroundColor: Colors.green,
                                            ),
                                            Text("  reviewed",
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.w500)),
                                          ],
                                        ),
                                        Text("  View Detail",
                                            style: TextStyle(
                                                color: Colors.blueGrey,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w800)),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      )),
                ),
                Positioned(
                  right: 5,
                  top: 4,
                  child: Container(
                    alignment: Alignment.topRight,
                    height: 30,
                    width: 150,
                    decoration: BoxDecoration(
                      gradient: color.titlecardsgradientColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(2, 2),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text("Title",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w800)),
                    ),
                  ),
                ),
              ],
            );
          },
        )),
      ],
    ));
  }
}
