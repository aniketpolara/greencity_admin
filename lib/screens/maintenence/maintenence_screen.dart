import 'package:flutter/material.dart';
import 'package:greencity/common/text.dart';
import 'package:greencity/screens/maintenence/add_mentenence.dart';
import 'package:greencity/screens/maintenence/pending_dues.dart';
import 'package:greencity/screens/maintenence/received_dues_screen.dart';
import 'package:greencity/utils/images.dart';
import 'package:greencity/utils/strings.dart';

class MaintenenceScreen extends StatefulWidget {
  const MaintenenceScreen({super.key});

  @override
  State<StatefulWidget> createState() => MaintenenceScreenState();
}

class MaintenenceScreenState extends State<MaintenenceScreen>
    with TickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: const Image(
          image: AssetImage(imgAppbar),
          fit: BoxFit.cover,
        ),
        elevation: 2,
        title: text(color: Colors.white, text: txtMaintenence, fontsize: 24),
        bottom: PreferredSize(
          preferredSize: const Size(40, 40),
          child: TabBar(
            indicatorColor: Colors.white,
            controller: tabController,
            tabs: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  text(
                      text: txtRecievedDues,
                      fontWeight: FontWeight.w600,
                      fontsize: 16),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  text(
                      text: txtPendingDues,
                      fontWeight: FontWeight.w600,
                      fontsize: 16),
                  const SizedBox(
                    height: 35,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  text(
                      text: txtAddMaintenence,
                      fontWeight: FontWeight.w600,
                      fontsize: 16),
                  const SizedBox(
                    height: 45,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [
                ReceivedDues(),
                PendingDuesScreen(),
                AddMentenence()
              ],
            ),
          )
        ],
      ),
    );
  }
}
