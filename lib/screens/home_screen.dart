import 'dart:async';

import 'package:flutter/material.dart';

import '../utils/assets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              const ButtonWidgetWithGrass(),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonWidgetWithGrass extends StatefulWidget {
  const ButtonWidgetWithGrass({Key? key}) : super(key: key);

  @override
  State<ButtonWidgetWithGrass> createState() => _ButtonWidgetWithGrassState();
}

class _ButtonWidgetWithGrassState extends State<ButtonWidgetWithGrass> {
  double currentLoading = 0;
  late Timer loadingTimer;
  @override
  void initState() {
    super.initState();
    loadingTimer = Timer.periodic(const Duration(milliseconds: 200), (timer) {
      if (currentLoading != 100) {
        currentLoading += 10;
        setState(() {});
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    loadingTimer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(currentLoading.toString()),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Spacer(),
              Container(
                width: 70,
                constraints: const BoxConstraints(maxHeight: 73),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      Assets.tHuman,
                    ),
                  ),
                ),
              ),

              //   width: (MediaQuery.of(context).size.width - currentLoading*3.9 ) ,
              //   child: AnimatedContainer(
              //     height: 13,
              //     decoration: const BoxDecoration(
              //       image: DecorationImage(
              //         image: AssetImage(Assets.tGazon),
              //         fit: BoxFit.cover,
              //       ),
              //     ),
              //     duration: const Duration(milliseconds: 100),
              //   ),
              // ),
            ],
          ),
          Container(
            height: 51,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Color(0xff49C311),
            ),
          ),
        ],
      ),
    );
  }
}
