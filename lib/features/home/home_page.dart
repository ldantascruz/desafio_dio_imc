import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../weight_height/weight_height_cubit.dart';
import '../weight_height/weight_height_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IMC App'),
        centerTitle: true,
      ),
      body: BlocBuilder<WeightHeightCubit, WeightHeightState>(
        builder: (context, state) {
          if (state is WeightHeightInitial) {
            return const Center(
              child: Text('Sem dados de IMC para exibir'),
            );
          }
          if (state is WeightHeightLoaded) {
            return ListView.builder(
              itemCount: state.weightHeights.length,
              itemBuilder: (context, index) {
                final weightHeight = state.weightHeights[index];
                return ListTile(
                  title: Text(
                    'Peso: ${weightHeight.weight}',
                  ),
                  subtitle: Text(
                    'Altura: ${weightHeight.height}\nIMC: ${weightHeight.imc.toStringAsFixed(2)}',
                  ),
                );
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/insert');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
