import 'package:flutter_bloc/flutter_bloc.dart';

import 'weight_height_model.dart';
import 'weight_height_state.dart';

class WeightHeightCubit extends Cubit<WeightHeightState> {
  final List<WeightHeightModel> _weightHeights = [];

  WeightHeightCubit() : super(WeightHeightInitial());

  void calculateIMC(double weight, double height) {
    final weightHeight = WeightHeightModel(weight: weight, height: height);
    _weightHeights.add(weightHeight);
    emit(WeightHeightLoaded(List.of(_weightHeights)));
  }
}
