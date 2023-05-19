class WeightHeight {
  final double weight;
  final double height;
  final double imc;

  WeightHeight({required this.weight, required this.height})
      : imc = weight / (height * height);
}



