import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kozarni_appointment/controller/template_controller.dart';
import 'package:kozarni_appointment/screen/view/check_out.dart';
import 'package:kozarni_appointment/screen/view/home.dart';
import 'package:kozarni_appointment/screen/view/profile.dart';
import 'package:kozarni_appointment/screen/view/search.dart';
import 'package:kozarni_appointment/widget/bottom_nav.dart';

List<Widget> _templates = [
  HomeView(),
  SearchView(),
  CheckOutView(),
  ProfileView(),
];

class Template extends StatelessWidget {
  const Template({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TemplateController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Obx(
          () => Text(
            controller.index == 0
                ? "Home"
                : controller.index == 1
                    ? "Search"
                    : controller.index == 2
                        ? "Check Out"
                        : 1 == 1
                            ? "Login"
                            : "Profile",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Obx(() => _templates[controller.index.value]),
      bottomNavigationBar: BottomNav(),
    );
  }
}
