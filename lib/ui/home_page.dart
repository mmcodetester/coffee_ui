import 'package:coffee_ui/model/coffee_model.dart';
import 'package:coffee_ui/ui/sections/header_section.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import 'sections/get_single_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> items = ['Cappuccino', 'Espersso', 'Latte', 'Flat Weans'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        body: LayoutBuilder(builder: ((context, constraints) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //header
                const HeaderSection(),
                //end header

                //title
                Container(
                  padding: const EdgeInsets.only(left: 25, top: 10),
                  child: Row(
                    children: const [
                      Text(
                        "FIND THE BEST  \nCOFFEE FOR YOU",
                        style: TextStyle(fontSize: 24.0, letterSpacing: 1.0),
                      )
                    ],
                  ),
                ),

                //search bar
                Container(
                  padding:
                      const EdgeInsets.only(left: 25, right: 25.0, top: 20),
                  child: GFSearchBar(
                    searchBoxInputDecoration: const InputDecoration(
                        constraints: BoxConstraints(),
                        label: Text('Search'),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        prefixIcon: Icon(Icons.search)),
                    searchList: items,
                    searchQueryBuilder: (query, item) {
                      return item
                          .where((item) => item
                              .toString()
                              .toLowerCase()
                              .contains(query..toString().toLowerCase()))
                          .toList();
                    },
                    overlaySearchListItemBuilder: (item) {
                      return Container(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          item.toString(),
                          style: const TextStyle(
                              fontSize: 18, color: Colors.black),
                        ),
                      );
                    },
                  ),
                ),
                //end search bar

                //coffee tabs
                Container(
                    height: 30,
                    padding: const EdgeInsets.only(left: 30),
                    child: TabBar(
                        // indicatorPadding: EdgeInsets.only(top: 15, bottom: 5),
                        // indicator: BoxDecoration(
                        //   color: Colors.amber,
                        //   shape: BoxShape.circle,
                        // ),
                        unselectedLabelColor: Colors.grey,
                        indicator: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(30), // Creates border
                            color: Colors.amber),
                        isScrollable: true,
                        tabs: const [
                          Text("Cappuccanion"),
                          Text("Espresso"),
                          Text('Latte'),
                          Text("Mocha Latte"),
                          Text('Americano'),
                          Text("Black Coffee"),
                        ])),
                // Container(
                //   padding: const EdgeInsets.only(left: 20),
                //   child: const TabBarView(children: [
                //     Text("Cappuccanion"),
                //     Text("Espresso"),
                //     Text('Latte'),
                //   ]),
                // ),
                //
                Container(
                  constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.width > 500
                          ? MediaQuery.of(context).size.height * 0.5
                          : MediaQuery.of(context).size.width * 0.5),
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  //height: MediaQuery.of(context).size.height * 0.5,
                  width: double.infinity,
                  child: ListView(
                    // primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyWidget()),
                            );
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                                color: Colors.black54),
                            constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.of(context).size.width * 0.2,
                                maxHeight:
                                    MediaQuery.of(context).size.width * 0.49),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Image.asset(
                                      'images/coffee4.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text('Cappuccino'),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 12, top: 5),
                                  child: Text(
                                    'With oak milk',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        '\$120',
                                        style: TextStyle(color: Colors.amber),
                                      ),
                                      GFIconButton(
                                        color: GFColors.WARNING,
                                        icon: const Icon(Icons.add),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              color: Colors.black54),
                          constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * 0.2,
                              maxHeight:
                                  MediaQuery.of(context).size.width * 0.49),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset(
                                    'images/coffee4.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text('Cappuccino'),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 12, top: 5),
                                child: Text(
                                  'With oak milk',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      '\$120',
                                      style: TextStyle(color: Colors.amber),
                                    ),
                                    GFIconButton(
                                      color: GFColors.WARNING,
                                      icon: const Icon(Icons.add),
                                      onPressed: () {},
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              color: Colors.black54),
                          constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * 0.2,
                              maxHeight:
                                  MediaQuery.of(context).size.width * 0.49),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset(
                                    'images/coffee4.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text('Cappuccino'),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 12, top: 5),
                                child: Text(
                                  'With oak milk',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      '\$120',
                                      style: TextStyle(color: Colors.amber),
                                    ),
                                    GFIconButton(
                                      size: GFSize.SMALL,
                                      color: GFColors.WARNING,
                                      icon: const Icon(Icons.add),
                                      onPressed: () {},
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              color: Colors.black54),
                          constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * 0.2,
                              maxHeight:
                                  MediaQuery.of(context).size.width * 0.49),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset(
                                    'images/coffee4.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text('Cappuccino'),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 12, top: 5),
                                child: Text(
                                  'With oak milk',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      '\$120',
                                      style: TextStyle(color: Colors.amber),
                                    ),
                                    GFIconButton(
                                      size: GFSize.SMALL,
                                      color: GFColors.WARNING,
                                      icon: const Icon(Icons.add),
                                      onPressed: () {},
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              color: Colors.black54),
                          constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * 0.2,
                              maxHeight:
                                  MediaQuery.of(context).size.width * 0.49),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset(
                                    'images/coffee4.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text('Cappuccino'),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 12, top: 5),
                                child: Text(
                                  'With oak milk',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      '\$120',
                                      style: TextStyle(color: Colors.amber),
                                    ),
                                    GFIconButton(
                                      size: GFSize.SMALL,
                                      color: GFColors.WARNING,
                                      icon: const Icon(Icons.add),
                                      onPressed: () {},
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Container(
                          decoration:
                              const BoxDecoration(color: Colors.black54),
                          constraints: BoxConstraints(
                              maxWidth:
                                  MediaQuery.of(context).size.width * 0.29,
                              minHeight:
                                  MediaQuery.of(context).size.height * 0.29),
                        ),
                      ),
                    ],
                  ),
                ),

                //

                const Padding(
                  padding: EdgeInsets.only(left: 30.0, top: 10, bottom: 20),
                  child: Text(
                    "Special For You",
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
                Wrap(children: [
                  for (var item in coffeeList)
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10.0)),
                              color: Colors.white.withOpacity(0.1)),
                          padding:
                              const EdgeInsets.only(top: 20.0, bottom: 20.0),
                          width: 300,
                          height: 200,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  child: Container(
                                padding: const EdgeInsets.all(10.0),
                                width: 200,
                                height: 160,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10.0)),
                                    border: Border.all(
                                        color: Colors.grey, width: 2.0),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(item.image!))),
                              )),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(item.name!),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text('5 Coffee Beans You Must Try'),
                                  const SizedBox(
                                    height: 15.0,
                                  ),
                                  Text(item.price!),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        '\$120',
                                        style: TextStyle(color: Colors.amber),
                                      ),
                                      GFIconButton(
                                        size: GFSize.SMALL,
                                        color: GFColors.WARNING,
                                        icon: const Icon(Icons.add),
                                        onPressed: () {},
                                      ),
                                      const SizedBox(
                                        width: 10.0,
                                      )
                                    ],
                                  )
                                ],
                              ))
                            ],
                          )),
                    )
                ])
              ],
            ),
          );
        })),
      ),
    );
  }
}
