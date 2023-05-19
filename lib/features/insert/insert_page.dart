import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../weight_height/weight_height_cubit.dart';

class InsertPage extends StatelessWidget {
  final weightController = TextEditingController();
  final heightController = TextEditingController();

  InsertPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<WeightHeightCubit>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inserir Dados'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: weightController,
              decoration: const InputDecoration(labelText: 'Peso (kg)'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: heightController,
              decoration: const InputDecoration(labelText: 'Altura (m)'),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () {
                final weight = double.tryParse(weightController.text);
                final height = double.tryParse(heightController.text);
                if (weight != null && height != null) {
                  cubit.calculateIMC(weight, height);
                  Navigator.pop(context);
                }
              },
              child: const Text('Calcular IMC'),
            ),
          ],
        ),
      ),
    );
  }
}
