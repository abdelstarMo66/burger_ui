import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int currentSelectedItems = 0;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.only(top: 10.0),
        height: 100.0,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => Stack(
            children: [
              Column(
                children: [
                  Container(
                    width: 90.0,
                    height: 90.0,
                    margin: EdgeInsets.only(
                        left: index == 0 ? 15.0 : 0, right: 15.0),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          currentSelectedItems=index;
                        });
                      },
                      child: Card(
                        color: index==currentSelectedItems? Colors.black.withOpacity(0.7) : Colors.white,
                        elevation: 3.0,
                        margin: const EdgeInsets.all(10.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Icon(
                          Icons.fastfood,
                          color: index ==currentSelectedItems? Colors.white :Colors.black.withOpacity(0.7),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  margin: EdgeInsets.only(
                    left: index == 0 ? 15.0 : 0,
                    right: 15.0,
                  ),
                  width: 90.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text("Burger"),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
