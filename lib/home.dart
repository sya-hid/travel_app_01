import 'package:card_swiper/card_swiper.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_01/const.dart';
import 'package:travel_app_01/detail.dart';
import 'package:travel_app_01/models/category_model.dart';
import 'package:travel_app_01/models/destination_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String category = 'All';
  int selectedPage = 0;
  List<IconData> icons = [
    Icons.home_rounded,
    Icons.location_on_outlined,
    Icons.bookmark_outline_rounded,
    Icons.settings_outlined,
  ];
  List<Destination> dataDestination = destinations;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: [
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello Sophia',
                        style: roboto.copyWith(
                            fontSize: 22,
                            color: black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Explore Beautiful World!',
                        style: roboto.copyWith(
                            fontSize: 14, color: black.withOpacity(0.4)),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 2, color: white),
                      image: const DecorationImage(
                          image: AssetImage('assets/profile.jpg'),
                          fit: BoxFit.cover)),
                )
              ],
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), color: white),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search Places',
                          prefixIcon: Icon(
                            Icons.search,
                            color: black.withOpacity(0.5),
                          ),
                          hintStyle: roboto.copyWith(
                              color: black.withOpacity(0.6), fontSize: 12)),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: blue,
                      boxShadow: [
                        BoxShadow(
                            color: blue.withOpacity(0.6),
                            offset: Offset.zero,
                            spreadRadius: 5,
                            blurRadius: 10)
                      ]),
                  child: const Icon(
                    Icons.tune_rounded,
                    color: white,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  'Explore Indonesia',
                  style: roboto.copyWith(
                      fontSize: 16, color: black, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Row(
                  children: [
                    Text(
                      'All',
                      style: roboto.copyWith(fontSize: 12, color: blue),
                    ),
                    const Icon(
                      Icons.arrow_right_rounded,
                      color: blue,
                      size: 22,
                    )
                  ],
                )
              ],
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 15),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(
                    categories.length,
                    (index) => Padding(
                          padding: index == 0
                              ? const EdgeInsets.only(left: 20, right: 15)
                              : index == categories.length - 1
                                  ? const EdgeInsets.only(right: 20)
                                  : const EdgeInsets.only(right: 15),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                category = categories[index];
                                category == 'All'
                                    ? dataDestination = destinations
                                    : dataDestination = destinations
                                        .where((element) =>
                                            element.category!.toLowerCase() ==
                                            categories[index].toLowerCase())
                                        .toList();
                              });
                            },
                            child: Container(
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: category == categories[index]
                                        ? blue
                                        : white,
                                    boxShadow: [
                                      category == categories[index]
                                          ? BoxShadow(
                                              offset: const Offset(0, 3),
                                              color: blue.withOpacity(0.6),
                                              spreadRadius: 2,
                                              blurRadius: 5)
                                          : const BoxShadow(color: white)
                                    ]),
                                child: Text(
                                  categories[index],
                                  style: roboto.copyWith(
                                      color: category == categories[index]
                                          ? white
                                          : black.withOpacity(0.5),
                                      fontSize: 14),
                                )),
                          ),
                        ))
              ],
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height * 0.55,
              padding: const EdgeInsets.only(top: 10, bottom: 10, right: 50),
              child: Swiper(
                itemCount: dataDestination.length,
                layout: SwiperLayout.STACK,
                itemWidth: MediaQuery.of(context).size.width * 0.7,
                axisDirection: AxisDirection.right,
                onTap: (index) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              DetailPage(destination: dataDestination[index])));
                },
                loop: true,
                itemBuilder: (context, index) {
                  return DestinationItem(
                    destination: dataDestination[index],
                  );
                },
              ))
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomNavigationBar(
            unselectedItemColor: black.withOpacity(0.5),
            selectedItemColor: blue,
            type: BottomNavigationBarType.fixed,
            onTap: (value) {
              setState(() {
                selectedPage = value;
              });
            },
            items: [
              ...List.generate(
                  icons.length,
                  (index) => BottomNavigationBarItem(
                      icon: Column(
                        children: [
                          Icon(
                            icons[index],
                            size: 24,
                          ),
                          const SizedBox(height: 5),
                          selectedPage == index
                              ? Container(
                                  height: 5,
                                  width: 5,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle, color: blue),
                                )
                              : Container()
                        ],
                      ),
                      label: '')),
            ]),
      ),
    );
  }
}

class DestinationItem extends StatelessWidget {
  final Destination destination;
  const DestinationItem({
    Key? key,
    required this.destination,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        color: white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(destination.image!),
                      fit: BoxFit.cover)),
            )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        destination.name!,
                        style: roboto.copyWith(
                            fontSize: 18,
                            color: black,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            color: blue,
                            size: 14,
                          ),
                          Text(
                            destination.location!,
                            style: roboto.copyWith(fontSize: 12, color: blue),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                      height: 20,
                      child: Stack(
                        children: [
                          Positioned(
                            left: -10,
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.shade200),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: DottedLine(
                        dashColor: black.withOpacity(0.4),
                        dashGapLength: 10,
                        dashLength: 5,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Text.rich(TextSpan(children: [
                        TextSpan(
                            text: '\$${destination.price} / ',
                            style: roboto.copyWith(
                                fontSize: 14, color: black.withOpacity(0.4))),
                        TextSpan(
                            text: 'Person',
                            style: roboto.copyWith(
                                fontSize: 14, color: black.withOpacity(0.8)))
                      ])),
                      const Spacer(),
                      Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: blue.shade200),
                          child: const Icon(
                            Icons.bookmark_outlined,
                            color: blue,
                            size: 16,
                          ))
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
