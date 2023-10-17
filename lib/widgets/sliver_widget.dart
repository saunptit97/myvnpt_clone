import 'package:flutter/material.dart';

class SliverWidget extends StatelessWidget {
  const SliverWidget({
    super.key,
    this.expandedHeight = 200,
    required this.imageBackground,
    required this.child,
  });
  final double expandedHeight;
  final String imageBackground;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: expandedHeight,
            floating: true,
            pinned: true,
            snap: true,
            actionsIconTheme: const IconThemeData(opacity: 0.0),
            centerTitle: true,
            leading: const BackButton(color: Colors.white),
            flexibleSpace: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Image.asset(
                    imageBackground,
                    fit: BoxFit.fill,
                  ),
                ),
                AppBar(
                  title: const Text(
                    "Gói cước di động",
                    style: TextStyle(color: Colors.white),
                  ),
                  centerTitle: true,
                  backgroundColor: Colors.transparent,
                ),
                const Positioned(
                  top: 120,
                  left: 20,
                  child: Text(
                    "0824 318 851",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: child,
          ),
        ],
      ),
    );
  }
}
