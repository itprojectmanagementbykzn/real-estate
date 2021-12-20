import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kozarni_appointment/controller/home_controller.dart';
import 'package:kozarni_appointment/widget/general_card.dart';
import 'package:kozarni_appointment/widget/pick_up.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController _homeController = Get.find();
    return ListView(
      padding: const EdgeInsets.only(bottom: 20),
      children: [
        ///Pickup
        Container(
          height: 200,
          margin: EdgeInsets.only(top: 20),
          child: Obx(
            () => ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20),
              itemCount: _homeController.getByType('South Oakalarpa').length > 5
                  ? 5
                  : _homeController.getByType('South Oakalarpa').length,
              itemBuilder: (_, i) => PickUp(
                current: i,
                expertModel: _homeController.getByType('South Oakalarpa')[i],
              ),
            ),
          ),
        ),

        ///Category 1 start
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "တောင်ဥကလာပမြို့နယ်",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          height: 210,
          child: Obx(
            () => ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20),
              itemCount: _homeController.getByType('South Oakalarpa').length > 5
                  ? 5
                  : _homeController.getByType('South Oakalarpa').length,
              itemBuilder: (_, i) => GeneralCard(
                expertModel: _homeController.getByType('South Oakalarpa')[i],
              ),
            ),
          ),
        ),

        ///Category 1 end

        ///Category 1 start
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "ကမာရွတ်မြို့နယ်",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          height: 210,
          child: Obx(
            () => ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20),
              itemCount: _homeController.getByType('car').length > 5
                  ? 5
                  : _homeController.getByType('car').length,
              itemBuilder: (_, i) => GeneralCard(
                expertModel: _homeController.getByType('car')[i],
              ),
            ),
          ),
        ),

        ///Category 1 end

        ///Category 1 start
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "စမ်းချောင်းမြို့နယ်",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          height: 210,
          child: Obx(
            () => ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20),
              itemCount: _homeController.getByType('programmer').length > 5
                  ? 5
                  : _homeController.getByType('programmer').length,
              itemBuilder: (_, i) => GeneralCard(
                expertModel: _homeController.getByType('programmer')[i],
              ),
            ),
          ),
        ),

        ///Category 1 end

        ///Category 2 start
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "လှိုင်မြို့နယ်",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          height: 210,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            itemCount: _homeController.getByType('Hlaing').length > 5
                ? 5
                : _homeController.getByType('Hlaing').length,
            itemBuilder: (_, i) => GeneralCard(
              expertModel: _homeController.getByType('Hlaing')[i],
            ),
          ),
        )

        ///Category 2 end
      ],
    );
  }
}
