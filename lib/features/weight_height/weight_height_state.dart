import 'weight_height.dart';

abstract class WeightHeightState {}

class WeightHeightInitial extends WeightHeightState {
  WeightHeightInitial();
}

class WeightHeightLoaded extends WeightHeightState {
  final List<WeightHeight> weightHeights;

  WeightHeightLoaded(this.weightHeights);
}
