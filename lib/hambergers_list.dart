import 'package:flutter/material.dart';

class HambergersList extends StatefulWidget {
  const HambergersList({Key? key}) : super(key: key);

  @override
  State<HambergersList> createState() => _HambergersListState();
}

class _HambergersListState extends State<HambergersList> {
  @override
  Widget build(BuildContext context) {
    Widget burgerImage() => Container(
          height: 150.0,
          child: Image.asset("asset/burger.png"),
        );

    return SliverToBoxAdapter(
      child: Container(
        height: 240.0,
        margin: const EdgeInsets.only(top: 10.0),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => Stack(
            children: [
              Container(
                height: 240.0,
                width: 200.0,
                margin: EdgeInsets.only(
                  left: 15.0,
                  right: index == 10 ? 15.0 : 0.0,
                ),
                child: GestureDetector(
                  onTap: () {
                    // ToDo to Navigate
                  },
                  child: Card(
                    color: Colors.teal,
                    elevation: 3.0,
                    margin: const EdgeInsets.all(10.0),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45.0),
                      bottomLeft: Radius.circular(45.0),
                      topRight: Radius.circular(45.0),
                      bottomRight: Radius.circular(15.0),
                    )),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20.0,
                      ),
                      child: Column(
                        children: [
                          const Text(
                            "Burger",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Row(
                              children: [
                                const Expanded(
                                    child: Text(
                                  "15.95 \$ CAN",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.5,
                                  ),
                                )),
                                SizedBox(
                                  width: 48.0,
                                  height: 48.0,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: const Icon(
                                      Icons.add,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 55.0,
                  right: 60.0,
                  child: GestureDetector(
                onTap: () {
                  // ToDo To Navigate
                },
                child: burgerImage(),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
