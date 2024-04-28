import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_1/dashboard/controller/dashboard-state.dart';

import 'package:task_1/dashboard/controller/dashboard_controller.dart';
import 'package:task_1/dashboard/modules/users/view/page/user_page.dart';

class DashboardPage extends StatelessWidget {
  final List<String> titles = const ['Home', 'Users', 'Services'];

  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardController(),
      child: BlocBuilder<DashboardController, DashboardState>(
        builder: (context, state) {
          DashboardController controller = context.read<DashboardController>();
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.yellow,
              title: Text(titles[controller.SelectedTapIndex]),
              actions: [
                IconButton(
                    onPressed: () {
                      // Navigator.push(context, route);
                    },
                    icon: Icon(CupertinoIcons.add))
              ],
            ),
            body: PageView(
              controller: controller.pageController,
              onPageChanged: controller.OnChangeTapIndex,
              children: const [
                Text("Home"),
                UserPage(),
                Text("Services"),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: controller.SelectedTapIndex,
              onTap: controller.OnChangeTapIndex,
              unselectedItemColor: Colors.black,
              useLegacyColorScheme: true,
              unselectedLabelStyle:
                  const TextStyle(fontSize: 15, color: Colors.red),
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.home), label: 'home'),
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Users'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.category), label: 'Services')
              ],
            ),
          );
        },
      ),
    );
  }
}
