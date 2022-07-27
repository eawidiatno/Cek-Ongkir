import 'package:cek_ongkir_cubit/domain/raja_ongkir/cost/cost_response_data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);
  static final String TAG = '/result_page';
  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  late CostResponseDataModel response;
  @override
  void initState() {
    response = Get.arguments as CostResponseDataModel;
    // print(response.originDetails);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Detile"),
        ),
        body: Column(children: [
          ListTile(
            tileColor: Colors.green,
            title: Text("Asal Kota"),
            subtitle: Text(response.originDetails!.cityName.toString()),
          ),
          ListTile(
            tileColor: Colors.orange,
            title: Text("Tujuan Kota"),
            subtitle: Text(response.destinationDetails!.cityName.toString()),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              response.results!.first.name.toString(),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: response.results!.first.costs!.length,
              itemBuilder: (context, index) {
                var _cost = response.results!.first.costs![index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        ListTile(
                          title: Text(_cost.service.toString()),
                          subtitle: Text(_cost.description.toString()),
                          trailing: Column(
                            children: [
                              Text(
                                "Rp. " + (_cost.cost!.first.value.toString()),
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(_cost.cost!.first.etd.toString() + " Hari"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          )
        ]));
  }
}
