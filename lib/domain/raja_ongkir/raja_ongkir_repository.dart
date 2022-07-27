//interface raja ongkir
import 'package:cek_ongkir_cubit/application/cubit/raja_ongkir_cubit.dart';
import 'package:cek_ongkir_cubit/domain/raja_ongkir/city/city_data_model.dart';
import 'package:cek_ongkir_cubit/domain/raja_ongkir/cost/cost_request_data_model.dart';
import 'package:cek_ongkir_cubit/domain/raja_ongkir/cost/cost_response_data_model.dart';
import 'package:cek_ongkir_cubit/domain/raja_ongkir/raja_ongkir_failed.dart';
import 'package:cek_ongkir_cubit/utils/constants.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class IRajaOngkir {
  //get city tanpa parameter, kiri gagal, kanan sucsess
  //future selalu menggunakan either
  Future<Either<RajaOngkirFailed, List<CityDataModel>>> getCityData();
  Future<Either<RajaOngkirFailed, CostResponseDataModel>> getCost(
      CostRequestDataModel costRequest);
}

@LazySingleton(as: IRajaOngkir)
class RajaOngkirRepository extends IRajaOngkir {
  // final _dio = Dio();
  Dio _dio = Dio();
  @override
  Future<Either<RajaOngkirFailed, List<CityDataModel>>> getCityData() async {
    Response response;
    _dio =
        Dio(BaseOptions(headers: {"key": "8bc2d6e5da1e8ef68853c9714fbdf17b"}));
    //biar bisa di maintenance, dipisahkan di utils
    //jika get data dengan async harus ditambahkan await
    // response = await _dio.get("${Constants.rajaOngkirBaseUrl}starter/city");

    try {
      response = await _dio.get("${Constants.rajaOngkirBaseUrl}starter/city");
      List<dynamic> _ListData = response.data['rajaongkir']['results'];
      var _ListResult =
          _ListData.map((result) => CityDataModel.fromJson(result)).toList();

      return right(_ListResult);

      //jika ada error karena dia
    } on DioError catch (err) {
      return left(checkResponseError(err));
    }
  }

  RajaOngkirFailed checkResponseError(DioError err) {
    if (err.type == DioErrorType.response) {
      var _errorData = err.response!.data['rajaongkir']['status'];
      var _errorModel = RajaOngkirFailed.fromJson(_errorData);

      return _errorModel;
    } else
      return RajaOngkirFailed();
  }

  @override
  Future<Either<RajaOngkirFailed, CostResponseDataModel>> getCost(
      CostRequestDataModel costRequest) async {
    Response response;
    _dio =
        Dio(BaseOptions(headers: {"key": "8bc2d6e5da1e8ef68853c9714fbdf17b"}));
    //biar bisa di maintenance, dipisahkan di utils
    //jika get data dengan async harus ditambahkan await
    // response = await _dio.get("${Constants.rajaOngkirBaseUrl}starter/city");

    try {
      response = await _dio.post("${Constants.rajaOngkirBaseUrl}starter/cost",
          data: costRequest.toJson()); //.toJson merubah menjadi dynamic
      dynamic _listData = response.data['rajaongkir'];
      final _result = CostResponseDataModel.fromJson(
          _listData); // untuk memfilter 5 data result menjadi 3

      return right(_result);

      //jika ada error karena dia
    } on DioError catch (err) {
      return left(checkResponseError(err));
    }
  }
}
