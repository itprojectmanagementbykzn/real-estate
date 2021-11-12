import 'package:flutter/material.dart';
import 'package:kozarni_appointment/controller/home_controller.dart';
import 'package:kozarni_appointment/widget/general_card.dart';
import 'package:get/get.dart';

class CheckOutView extends StatelessWidget {
  const CheckOutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController _home = Get.find();
    return Obx(
      () => ListView.builder(
        itemCount: _home.myPurchase.length,
        itemBuilder: (_, i) => CheckOutCard(
          id: _home.myPurchase[i].id!,
          expertModel: _home.getExpert(_home.myPurchase[i].expertId),
          key: ValueKey(i),
        ),
      ),
    );
  }
}
