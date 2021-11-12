import 'package:get/route_manager.dart';
import 'package:kozarni_appointment/binding/expert_binding.dart';
import 'package:kozarni_appointment/binding/template_binding.dart';
import 'package:kozarni_appointment/screen/booking.dart';
import 'package:kozarni_appointment/screen/create_expert.dart';
import 'package:kozarni_appointment/screen/detail.dart';
import 'package:kozarni_appointment/screen/manage.dart';
import 'package:kozarni_appointment/screen/purchase.dart';
import 'package:kozarni_appointment/screen/template.dart';

const String homePage = '/home';
const String detailPage = '/detail';
const String bookingPage = '/booking';
const String createExpertPage = '/createExpertPage';
const String purchasePage = '/purchasePage';
const String managePage = '/managePage';
List<GetPage> routes = [
  GetPage(
    name: homePage,
    page: () => Template(),
    // binding: TemplateBinding(),
  ),
  // GetPage(
  //   name: detailPage,
  //   page: () => DetailPage(),
  //   // binding: TemplateBinding(),
  // ),
  // GetPage(
  //   name: bookingPage,
  //   page: () => BookingPage(),
  //   // binding: TemplateBinding(),
  // ),
  GetPage(
    name: createExpertPage,
    page: () => CreateExpertPage(),
    binding: ExpertBinding(),
  ),
  GetPage(
    name: purchasePage,
    page: () => PurchasePage(),
  ),
  GetPage(
    name: managePage,
    page: () => ManagePage(),
  ),
];
