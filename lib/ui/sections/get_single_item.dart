import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_icon_button.dart';
import 'package:getwidget/getwidget.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(body: SingleChildScrollView(
      child: LayoutBuilder(
        builder: ((context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                //margin: const EdgeInsets.all(20.0),
                padding:
                    const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                height: size.height * 0.7,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        opacity: 0.7,
                        fit: BoxFit.cover,
                        image: AssetImage('images/coffee4.jpg'))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GFIconButton(
                            color: GFColors.DARK.withOpacity(0.3),
                            icon: const Icon(Icons.arrow_back_ios),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                        GFIconButton(
                            color: GFColors.DARK.withOpacity(0.3),
                            icon: const Icon(Icons.favorite_border_outlined),
                            onPressed: () {}),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.zero,
                      height: size.height * 0.389,
                      //color: Colors.white,
                      child: const SizedBox(),
                    ),
                    Container(
                      height: size.height * 0.201,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.4),
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text("Cappuccino",
                                      style: TextStyle(fontSize: 24.0)),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.zero,
                                height: 50,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: GFButton(
                                    color: GFColors.DARK.withOpacity(0.8),
                                    constraints: const BoxConstraints(
                                      minHeight: 80,
                                    ),
                                    onPressed: () {},
                                    child: Column(
                                      children: const [
                                        Icon(
                                          Icons.coffee_maker_outlined,
                                          color: Colors.brown,
                                        ),
                                        Text(
                                          "Coffee",
                                          style: TextStyle(color: Colors.brown),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.zero,
                                height: 50,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: GFButton(
                                    color: GFColors.DARK.withOpacity(0.8),
                                    constraints: const BoxConstraints(
                                      minHeight: 80,
                                    ),
                                    onPressed: () {},
                                    child: Column(
                                      children: const [
                                        Icon(
                                          Icons.coffee_maker_outlined,
                                          color: Colors.brown,
                                        ),
                                        Text(
                                          "Coffee",
                                          style: TextStyle(color: Colors.brown),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              // Stack(
              //   children: [
              //     Container(
              //       margin: EdgeInsets.only(top: size.height * 0.4),
              //       color: Colors.grey.withOpacity(0.1),
              //       height: 500,
              //     )
              //   ],
              // ),
            ],
          );
        }),
      ),
    ));
  }
}
