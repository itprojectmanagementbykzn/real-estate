import 'package:get/instance_manager.dart';
import 'package:kozarni_appointment/controller/home_controller.dart';
import 'package:kozarni_appointment/controller/template_controller.dart';

class TemplateBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      TemplateController(),
    );
    Get.put(
      HomeController(),
    );
  }
}
