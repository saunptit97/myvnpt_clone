import 'package:flutter/material.dart';
import 'package:my_vnpt/utils/icons_utils.dart';

import 'widgets/favourite_widget.dart';
import 'widgets/header_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff7FCDFE),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderWidget(),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 15,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(18),
                  ),
                ),
                child: Column(
                  children: [
                    FavouriteWidget(),
                    const SizedBox(height: 30),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            IconUtils.banner,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
