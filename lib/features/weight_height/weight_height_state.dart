import 'weight_height_model.dart';

abstract class WeightHeightState {}

class WeightHeightInitial extends WeightHeightState {
  WeightHeightInitial();
}

class WeightHeightLoaded extends WeightHeightState {
  final List<WeightHeightModel> weightHeights;

  WeightHeightLoaded(this.weightHeights);
}
