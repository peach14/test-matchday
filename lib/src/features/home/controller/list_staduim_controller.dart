import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../utils/services/storeat/staduiam_data.dart';
import '../models/staduim_model.dart';

class ListStaDuimController extends Notifier<List<Staduaim>> {
  @override
  build() {
    state = loadData();
    return state;
  }

  List<Staduaim> loadData() {
    return staDauimListFromJson(datastaduim);
  }
}

final listStaDuaimProvider =
    NotifierProvider<ListStaDuimController, List<Staduaim>>(
        ListStaDuimController.new);
