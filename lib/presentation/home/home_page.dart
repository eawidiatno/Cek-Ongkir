import 'package:cek_ongkir_cubit/application/cubit/raja_ongkir_controller.dart';
import 'package:cek_ongkir_cubit/application/cubit/raja_ongkir_cubit.dart';
import 'package:cek_ongkir_cubit/domain/raja_ongkir/city/city_data_model.dart';
import 'package:cek_ongkir_cubit/domain/raja_ongkir/cost/cost_request_data_model.dart';
import 'package:cek_ongkir_cubit/injection.dart';
import 'package:cek_ongkir_cubit/presentation/result/result_page.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  static final String TAG = '/';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final rajaOngkirCubit = getIt<RajaOngkirCubit>();
  final costCubit = getIt<RajaOngkirCubit>();
  // final controller = Get.put(RajaOngkirController());

  final weightController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    rajaOngkirCubit.getCityDataFromInternet();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cek Ongkir"),
      ),

      //Blocprovider => child akan selalu dipengaruhi subjeckBloc / Cubit
      body: BlocProvider(
        create: (context) => costCubit,
        child: BlocConsumer<RajaOngkirCubit, RajaOngkirState>(
            listener: (context, state) {
          state.maybeMap(
              orElse: () {},
              loading: (e) {},
              error: (e) {},
              onGetCostData: (e) {
                Get.toNamed(ResultPage.TAG, arguments: e.responseDataModel);
              });
        }, builder: (context, state) {
          return Column(
            children: [
              BlocProvider(
                create: (context) => rajaOngkirCubit,
                child: BlocConsumer<RajaOngkirCubit, RajaOngkirState>(
                  listener: (context, state) {
                    state.maybeMap(
                      orElse: () {},
                      loading: (e) => print("Is Loading"),
                      error: (e) => print(e.failed),
                      onGetCityData: (e) => print(e.dataModel),
                    );
                  },
                  builder: (context, state) {
                    return state.maybeMap(
                        orElse: () => Center(),
                        loading: (e) => Container(
                            padding: EdgeInsets.all(20),
                            child: DropdownButtonFormField<CityDataModel>(
                              items: [],
                              onChanged: null,
                              decoration: InputDecoration(
                                  labelText: "Origin",
                                  hintText: "Pilih Kota",
                                  border: OutlineInputBorder()),
                              icon: CircularProgressIndicator(),
                            )),
                        error: (e) => Center(child: Text(e.failed.description)),
                        onGetCityData: (value) => Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(20),
                                  child: DropdownSearch<String>(
                                    popupProps:
                                        PopupProps.dialog(showSearchBox: true),
                                    dropdownDecoratorProps:
                                        DropDownDecoratorProps(
                                      dropdownSearchDecoration: InputDecoration(
                                          labelText: "Origin",
                                          hintText: "Pilih Kota",
                                          border: OutlineInputBorder()),
                                    ),
                                    items: value.dataModel
                                        .map((d) =>
                                            d.type! +
                                            " " +
                                            d.cityName! +
                                            " , " +
                                            d.province!)
                                        .toList(),
                                    onChanged: (value) =>
                                        print(value!.toString()),
                                  ),
                                ),
                              ],
                            ));
                  },
                ),
              ),
              BlocProvider(
                create: (context) => rajaOngkirCubit,
                child: BlocConsumer<RajaOngkirCubit, RajaOngkirState>(
                  listener: (context, state) {
                    state.maybeMap(
                      orElse: () {},
                      loading: (e) => print("Is Loading"),
                      error: (e) => print(e.failed),
                      onGetCityData: (e) => print(e.dataModel),
                    );
                  },
                  builder: (context, state) {
                    return state.maybeMap(
                        orElse: () => Center(),
                        loading: (e) => Container(
                              padding: EdgeInsets.all(20),
                              child: DropdownButtonFormField<CityDataModel>(
                                items: [],
                                onChanged: null,
                                decoration: InputDecoration(
                                    labelText: "Destination",
                                    hintText: "Pilih Kota",
                                    border: OutlineInputBorder()),
                                icon: CircularProgressIndicator(),
                              ),
                            ),
                        error: (e) => Center(child: Text(e.failed.description)),
                        onGetCityData: (value) => Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(20),
                                  child: DropdownSearch<String>(
                                    popupProps:
                                        PopupProps.dialog(showSearchBox: true),
                                    dropdownDecoratorProps:
                                        DropDownDecoratorProps(
                                      dropdownSearchDecoration: InputDecoration(
                                          labelText: "Destination",
                                          hintText: "Pilih Kota",
                                          border: OutlineInputBorder()),
                                    ),
                                    items: value.dataModel
                                        .map((d) =>
                                            d.type! +
                                            " " +
                                            d.cityName! +
                                            " , " +
                                            d.province!)
                                        .toList(),
                                    onChanged: (value) =>
                                        print(value!.toString()),
                                  ),
                                ),
                              ],
                            ));
                  },
                ),
              ),
              Form(
                key: formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    controller: weightController,
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value.toString().isEmpty)
                        return "Field cnn't be empty";
                      else
                        return null;
                    },
                    decoration: InputDecoration(
                        hintText: "weight", border: OutlineInputBorder()),
                  ),
                ),
              ),
              state.maybeMap(
                orElse: () => defaultButton(),
                loading: (e) => loadingButton(),
              ) // copas dari state untuk mempercantik tampilan)

              // di extract method

              // Container(
              //     width: double.infinity,
              //     height: 45,
              //     margin: EdgeInsets.all(20),
              //     child:
              //         ElevatedButton(onPressed: () {}, child: Text("Get Ongkir"))),
            ],
          );
        }),
      ),
    );
  }

  Container defaultButton() {
    return Container(
      width: double.infinity,
      height: 45,
      margin: EdgeInsets.all(20),
      child: ElevatedButton(
          onPressed: () {
            var _request = CostRequestDataModel(
                courier: "jne",
                origin: 497,
                destination: 20,
                weight: 3000); //Dummy Data

            // final roControl = Get.put(RajaOngkirController());
            // print(roControl.getCityDataModel());
            // var _request = CostRequestDataModel(
            //     courier: "jne,tiki,pos",
            //     origin: 497,
            //     destination: 20,
            // int.parse(roControl.getCityDataModel().cityId.toString()),
            // weight: int.parse(weightController.text)); //Dummy Data

            costCubit
                .getCostDataFromInternet(_request); //Triger data dummy ke Cubit
          },
          child: Text("Get Ongkir")),
    );
  }

  Container loadingButton() {
    return Container(
      width: double.infinity,
      height: 45,
      margin: EdgeInsets.all(20),
      child: ElevatedButton(
        onPressed: null,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
