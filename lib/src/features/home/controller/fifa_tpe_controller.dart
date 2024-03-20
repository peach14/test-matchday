import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matchday/src/features/home/models/fifa_type_model.dart';

import '../../../utils/services/storeat/fifa_type_data.dart';

class FifaTypeController extends Notifier<List<FifaType>> {
  @override
  build() {
    state = loadData();
    return state;
  }

  List<FifaType> loadData() {
    return fifaTypeFromJson(fifaTypeData);
  }

  void updateStatus(int index) {
    fifaTypeData[index]['status'] == false
        ? fifaTypeData[index]['status'] = true
        : fifaTypeData[index]['status'] = false;
    state = loadData();
  }

  void clearStatus() {
    for (var element in fifaTypeData) {
      if (element['status'] == true) {
        element['status'] = false;
      }
    }
    state = loadData();
  }
}

final fifaTypeControllerProvider =
    NotifierProvider<FifaTypeController, List<FifaType>>(
        FifaTypeController.new);
