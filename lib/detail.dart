import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:travel_app_01/const.dart';
import 'package:travel_app_01/models/destination_model.dart';

class DetailPage extends StatefulWidget {
  final Destination destination;
  const DetailPage({Key? key, required this.destination}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
            child: Stack(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      widget.destination.image!,
                      height: MediaQuery.of(context).size.height * 0.5,
                      fit: BoxFit.cover,
                    )),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: white.withOpacity(0.6)),
                          child: const Icon(
                            Icons.arrow_back_ios_rounded,
                            color: blue,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: white.withOpacity(0.6)),
                        child: const Icon(
                          Icons.bookmark_outline_rounded,
                          color: blue,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.destination.name!,
                                    style: roboto.copyWith(
                                        fontSize: 16,
                                        color: black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 70,
                                        height: 30,
                                        child: Stack(
                                          children: [
                                            ...List.generate(
                                                widget.destination.members!
                                                            .length >
                                                        3
                                                    ? 3
                                                    : widget.destination
                                                        .members!.length,
                                                (index) => Positioned(
                                                      left: index * 15,
                                                      child: Container(
                                                        width: 30,
                                                        height: 30,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                width: 2,
                                                                color: white),
                                                            shape:
                                                                BoxShape.circle,
                                                            image: DecorationImage(
                                                                image: AssetImage(widget
                                                                        .destination
                                                                        .members![
                                                                    index]))),
                                                      ),
                                                    )),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        '${widget.destination.members!.length} trip members',
                                        style: roboto.copyWith(
                                            fontSize: 12,
                                            color: blue,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(7),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: white),
                              child: Column(
                                children: [
                                  const Icon(
                                    Icons.star_rounded,
                                    color: blue,
                                    size: 18,
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    '${widget.destination.rate}',
                                    style: roboto.copyWith(
                                        fontSize: 12, color: black),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ReadMoreText(
                      widget.destination.description!,
                      trimCollapsedText: 'Read more',
                      trimExpandedText: 'Show less',
                      colorClickableText: blue,
                      trimMode: TrimMode.Length,
                      trimLength: 120,
                      textAlign: TextAlign.justify,
                      style: roboto.copyWith(
                          color: black.withOpacity(0.5), height: 1.5),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          'Facilities',
                          style: roboto.copyWith(
                              fontSize: 16,
                              color: black,
                              fontWeight: FontWeight.bold),
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
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...List.generate(
                            widget.destination.facilities!.length,
                            (index) => Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: white),
                                  width: MediaQuery.of(context).size.width / 4 -
                                      25,
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 35,
                                        width: 35,
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: blue.withOpacity(0.5),
                                        ),
                                        child: Image.asset(widget.destination
                                            .facilities![index].image),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        widget.destination.facilities![index]
                                            .text,
                                        style: roboto.copyWith(
                                            fontSize: 11,
                                            color: black.withOpacity(0.6)),
                                      ),
                                    ],
                                  ),
                                ))
                      ],
                    ),
                  ),
                  const SizedBox(height: 20)
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: white,
        height: 90,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Price',
                    style: roboto.copyWith(
                      fontSize: 14,
                      color: blue,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '\$${widget.destination.price}',
                    style: roboto.copyWith(
                        fontSize: 22,
                        color: black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(width: 30),
              Expanded(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: blue,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: blue.withOpacity(0.5),
                            blurRadius: 10,
                            spreadRadius: 5,
                            offset: Offset.zero)
                      ]),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Book Now',
                          style: roboto.copyWith(fontSize: 18, color: white),
                        ),
                        const SizedBox(width: 10),
                        const Icon(
                          Icons.arrow_forward_rounded,
                          color: white,
                          size: 18,
                        )
                      ],
                    ),
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
