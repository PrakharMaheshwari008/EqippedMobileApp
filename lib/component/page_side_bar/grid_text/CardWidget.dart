import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  List data = [
    {"color": const Color(0xffff8f61)},
    {"color": const Color(0xffff8f61)},
    {"color": const Color(0xffff8f61)},
    {"color": const Color(0xffff8f61)},
    // {"color": const Color(0xffff8f61)},

  ];

  final colorwhite = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Container(
        height: 290,
        child: GridView.builder(
          itemCount: data.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3/2,
            // crossAxisSpacing: 10
          ),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(2.0),
              child: SizedBox(
                height: 50,
                child: Card(
                  color: data[index]["color"],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '  Heart Rate',
                            style: TextStyle(color: colorwhite, fontSize: 16),
                          ),

                          Container(
                            padding: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30)),
                                color: Color.fromRGBO(255, 255, 255, 0.38)),
                            child: const Text("108"),
                          )
                        ],
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            '144 bpm',
                            style: TextStyle(fontSize: 25, color: colorwhite),
                          )),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
