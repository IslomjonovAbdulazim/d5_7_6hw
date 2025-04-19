import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff101112),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            children: [
              // Tesla Model [HW]

              // Car & Lock
              SizedBox(
                height: 270,
                child: Stack(
                  children: [
                    Image.asset("assets/tesla.png"),
                    Align(
                      alignment: Alignment(0.7, -1),
                      child: SizedBox(
                        height: 65,
                        width: 65,
                        child: CupertinoButton(
                          padding: EdgeInsets.zero,
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xff27282A),
                          onPressed: () {},
                          child: Icon(
                            Icons.lock,
                            color: Color(0xffD4D4D4),
                            size: 26,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Battery & Climate
              SizedBox(height: 20),
              SizedBox(
                height: 180,
                child: Row(
                  children: [
                    SizedBox(width: 15),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color(0xff27282A),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Battery",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "Last charge 2w ago",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 10),
                            Expanded(
                              child: Row(
                                children: [
                                  Image.asset("assets/battery.png"),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "220km",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontWeight: FontWeight.w800,
                                          ),
                                          maxLines: 1,
                                        ),
                                        Divider(
                                            color: Colors.grey, thickness: 2),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              "85%",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w800,
                                                height: 1,
                                              ),
                                            ),
                                            Text(
                                              " 117kw",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                height: 1,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color(0xff27282A),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Climate",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "Interior 27°",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                SizedBox(
                                  width: 35,
                                  height: 35,
                                  child: CupertinoButton(
                                    color: Color(0xff3D3E40),
                                    padding: EdgeInsets.zero,
                                    onPressed: () {},
                                    child: Icon(Icons.add, color: Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    "20°",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 35,
                                  height: 35,
                                  child: CupertinoButton(
                                    color: Color(0xff3D3E40),
                                    padding: EdgeInsets.zero,
                                    onPressed: () {},
                                    child: Icon(CupertinoIcons.minus,
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(
                                  CupertinoIcons.flag,
                                  color: Color(0xff92B1E2),
                                  size: 20,
                                ),
                                Expanded(
                                  child: Text(
                                    " Cooling",
                                    style: TextStyle(
                                      color: Color(0xff92B1E2),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
