class WeightHeightModel {
  final double weight;
  final double height;
  final double imc;

  WeightHeightModel({
    required this.weight,
    required this.height,
  }) : imc = weight / (height * height);
}
