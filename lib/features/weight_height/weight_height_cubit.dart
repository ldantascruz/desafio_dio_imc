import 'package:flutter_bloc/flutter_bloc.dart';

import 'weight_height.dart';
import 'weight_height_state.dart';

class WeightHeightCubit extends Cubit<WeightHeightState> {
  final List<WeightHeight> _weightHeights = [];

  WeightHeightCubit() : super(WeightHeightInitial());

  void calculateIMC(double weight, double height) {
    final weightHeight = WeightHeight(weight: weight, height: height);
    _weightHeights.add(weightHeight);
    emit(WeightHeightLoaded(List.of(_weightHeights)));
  }
}
