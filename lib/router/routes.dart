import 'package:cek_ongkir_cubit/presentation/dashboard/dashboard_page.dart';
import 'package:cek_ongkir_cubit/presentation/home/home_page.dart';
import 'package:cek_ongkir_cubit/presentation/result/result_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

//static biar bisa diakses dari kelas lain tanpa membuat object baru
class Routes {
  static List<GetPage>? getPages = [
    GetPage(name: HomePage.TAG, page: () => HomePage()),
    GetPage(name: DashboardPage.TAG, page: () => DashboardPage()),
    GetPage(name: ResultPage.TAG, page: () => ResultPage()),
  ];
}
