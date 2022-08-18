import 'package:flutter/material.dart';
import 'package:travel_app_01/const.dart';
import 'package:travel_app_01/home.dart';
import 'package:travel_app_01/models/onboard_model.dart';

class OnBoardPage extends StatefulWidget {
  const OnBoardPage({Key? key}) : super(key: key);

  @override
  State<OnBoardPage> createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {
  AnimatedContainer indicator({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      margin: const EdgeInsets.only(right: 10),
      width: index == currentPage ? 40 : 10,
      height: 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: index == currentPage ? white : white.withOpacity(0.4),
      ),
    );
  }

  int index = 0;
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
              itemCount: onboards.length,
              onPageChanged: (value) {
                setState(() {
                  index = value;
                  currentPage = value;
                });
              },
              itemBuilder: (context, index) => Image.asset(
                    onboards[index].image,
                    fit: BoxFit.cover,
                  )),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: List.generate(
                        onboards.length, (index) => indicator(index: index))),
                const SizedBox(height: 20),
                Text.rich(TextSpan(
                    style: roboto.copyWith(
                        fontSize: 48, color: white, height: 1.2),
                    children: [
                      TextSpan(
                          text: '${onboards[index].text1}\n',
                          style: roboto.copyWith(fontWeight: FontWeight.w200)),
                      TextSpan(
                          text: onboards[index].text2,
                          style: roboto.copyWith(fontWeight: FontWeight.w500)),
                    ])),
                const SizedBox(height: 20),
                onboards.length - 1 == currentPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()),
                              (route) => false);
                        },
                        child: AnimatedContainer(
                          padding: const EdgeInsets.all(15),
                          duration: const Duration(milliseconds: 500),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: blue.shade400),
                          child: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: white,
                          ),
                        ),
                      )
                    : Container()
              ],
            ),
          )
        ],
      ),
    );
  }
}
