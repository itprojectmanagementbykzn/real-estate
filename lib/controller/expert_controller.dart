import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kozarni_appointment/controller/home_controller.dart';
import 'package:kozarni_appointment/data/constant.dart';
import 'package:kozarni_appointment/model/expert.dart';
import 'package:kozarni_appointment/service/database.dart';

class ExpertController extends GetxController {
  final HomeController _home = Get.find<HomeController>();

  final RxString id = ''.obs;

  final TextEditingController photolink;
  final TextEditingController name;
  final TextEditingController type;
  final TextEditingController description;
  final TextEditingController job;
  final TextEditingController rate;
  final TextEditingController rating;
  final TextEditingController jobTitle;
  final TextEditingController jobDescription;

  final FocusNode photolinkFocusNode;
  final FocusNode nameFocusNode;
  final FocusNode typeFocusNode;
  final FocusNode descriptionFocusNode;
  final FocusNode jobFocusNode;
  final FocusNode rateFocusNode;
  final FocusNode ratingFocusNode;
  final FocusNode jobTitleFocusNode;
  final FocusNode jobDescriptionFocusNode;

  ExpertController(
    this.photolink,
    this.name,
    this.type,
    this.description,
    this.job,
    this.rate,
    this.rating,
    this.jobTitle,
    this.jobDescription,
    this.photolinkFocusNode,
    this.nameFocusNode,
    this.typeFocusNode,
    this.descriptionFocusNode,
    this.jobFocusNode,
    this.rateFocusNode,
    this.ratingFocusNode,
    this.jobTitleFocusNode,
    this.jobDescriptionFocusNode,
  );

  @override
  void onInit() {
    super.onInit();
    if (_home.expertId.isNotEmpty) {
      final ExpertModel _expert = _home.getExpert(_home.expertId.value);
      id.value = _expert.id!;
      photolink.text = _expert.photolink;
      name.text = _expert.name;
      type.text = _expert.type;
      description.text = _expert.description;
      job.text = _expert.job;
      rate.text = _expert.rate;
      rating.text = _expert.rating;
      jobTitle.text = _expert.jobTitle;
      jobDescription.text = _expert.jobDescription;
    }
  }

  final Database _database = Database();
  final RxBool isLoading = false.obs;

  Future<void> create() async {
    if (isLoading.value) return;
    isLoading.value = true;

    try {
      final Map<String, dynamic> data = ExpertModel(
        photolink: photolink.text,
        name: name.text,
        type: type.text,
        description: description.text,
        job: job.text,
        rate: rate.text,
        rating: rating.text,
        jobTitle: jobTitle.text,
        jobDescription: jobDescription.text,
      ).toJson();
      if (id.isNotEmpty) {
        await _database.update(
          expertCollection,
          path: id.value,
          data: data,
        );
        Get.back();
        Get.snackbar('Success', 'Update!');
      } else {
        await _database.write(
          expertCollection,
          data: data,
        );
        Get.snackbar('Success', 'Created!');
      }
    } catch (e) {
      print("expertcontroller error $e");
      Get.snackbar('Error', '$e');
    }

    isLoading.value = false;
  }
}
