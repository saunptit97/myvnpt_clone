import 'package:flutter/material.dart';
import 'package:my_vnpt/recharge_money/mobile/view.dart';
import 'package:my_vnpt/utils/color_util.dart';
import 'package:my_vnpt/utils/icons_utils.dart';

class RechargeMoney extends StatefulWidget {
  const RechargeMoney({super.key});

  @override
  State<RechargeMoney> createState() => _RechargeMoneyState();
}

class _RechargeMoneyState extends State<RechargeMoney>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Điện thoại",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: false,
        leading: const BackButton(
          color: Colors.white,
        ),
        actions: const [
          Icon(
            Icons.history,
            color: Colors.white,
          ),
          SizedBox(width: 20),
        ],
        backgroundColor: ColorUtil.primaryColor,
        elevation: 0,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(width: size.width, height: size.height - 200),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  // image: DecorationImage(
                  //   fit: BoxFit.fitWidth,
                  //   image: AssetImage(
                  //     IconUtils.bgTutorial,
                  //   ),
                  // ),
                  color: ColorUtil.primaryColor,
                ),
                padding: const EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Số điện thoại",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          TextFormField(
                            initialValue: "0824 318 851",
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                            ),
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.only(bottom: 0),
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      IconUtils.danhBa,
                      width: 30,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 100,
                left: 5,
                right: 5,
                bottom: 0,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    children: [
                      TabBar(
                        controller: _tabController,
                        unselectedLabelColor: const Color(0xff9C9C9C),
                        labelColor: Colors.black,
                        dividerColor: ColorUtil.primaryColor,
                        tabs: const [
                          Tab(text: "Nạp Điện Thoại"),
                          Tab(text: "Mua Mã Thẻ"),
                          Tab(text: "Nạp Tự Động"),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _tabController,
                          children: <Widget>[
                            RechargeMoneyMobileTab(),
                            Card(
                              margin: const EdgeInsets.all(16.0),
                              child: Center(child: Text('2')),
                            ),
                            Card(
                              margin: const EdgeInsets.all(16.0),
                              child: Center(child: Text('2')),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
