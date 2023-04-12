import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/constant.dart';

import '../../model/sub.dart';
import '../../model/themes.dart';
import '../contant/container.dart';
import '../contant/text.dart';
import '../contant/textfield.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/home.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              height: 300,
              width: media(context).width,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  const Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.brown,
                      child: Text(
                        'JD',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container1(
                      45.0,
                      0.0,
                      16.0,
                      0.2,
                      2.0,
                      4.0,
                      0.0,
                      2.0,
                      TextFieldSearch(
                          context, 20.0, "Search", Icon(Icons.search), () {}),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 250,
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)),
                      color: Color.fromRGBO(92, 48, 21, 1.0),
                    ),
                    height: 600,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 200),
                            child: TextProdact("Dark Coffee", 30, Colors.white),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                categories.length,
                                (index) => GestureDetector(
                                  onTap: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 20.0),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Stack(
                                        children: [
                                          Container(
                                            height: media(context).width*0.6,
                                            width: media(context).width*0.5,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  categories[index]['image']!,
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: Column(
                                              children: [
                                                const SizedBox(
                                                  height: 180,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    TextSub(index, 'title',
                                                        Colors.white),
                                                    const SizedBox(
                                                      width: 50,
                                                    ),
                                                    TextSub(
                                                        index,
                                                        'price',
                                                        Colors.black)
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                TextSub(
                                                    index,
                                                    'sub',
                                                    Themes.customLightTheme
                                                        .backgroundColor),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right:300),
                            child: TextProdact("tea", 40, Colors.white),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                categories.length,
                                    (index) => GestureDetector(
                                  onTap: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 20.0),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Stack(
                                        children: [
                                          Container(
                                            height: media(context).width*0.6,
                                            width: media(context).width*0.5,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  categories[index]['image']!,
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(20),
                                            ),
                                            child: Column(
                                              children: [
                                                const SizedBox(
                                                  height: 150,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                                  children: [
                                                    TextSub(index, 'title',
                                                        Colors.white),
                                                    const SizedBox(
                                                      width: 50,
                                                    ),
                                                    TextSub(
                                                        index,
                                                        'price',
                                                        Themes.customLightTheme
                                                            .backgroundColor)
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                TextSub(
                                                    index,
                                                    'sub',
                                                    Themes.customLightTheme.backgroundColor),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
