import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/staduim_model.dart';

class StaDuimController extends Notifier<Staduaim> {
  @override
  build() {
    return Staduaim(
        name: "รอข้อมูล",
        icon: const Icon(Icons.confirmation_num_sharp),
        proIcon: const Icon(Icons.confirmation_num_sharp),
        fifaTypePart: '',
        logo: '',
        staduim: '',
        salary: '',
        gropimage: []);
  }

  Staduaim loadData({required Staduaim staduaim}) {
    state = staDuimFromJson(staduaim);
    return staDuimFromJson(staduaim);
  }
}

final staDuaimProviders =
    NotifierProvider<StaDuimController, Staduaim>(StaDuimController.new);
