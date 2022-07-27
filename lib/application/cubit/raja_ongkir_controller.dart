//Untuk bisa dipanggil dari kelas manapun
import 'package:cek_ongkir_cubit/domain/raja_ongkir/city/city_data_model.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class RajaOngkirController extends GetxController {
  final cityDataModel = CityDataModel().obs;

  void setCityDataModel(CityDataModel data) {
    this.cityDataModel.value = data; //ngisi data
  }

  CityDataModel getCityDataModel() => this.cityDataModel.value; //getter
}
