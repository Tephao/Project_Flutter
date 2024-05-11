import 'package:color_parser/color_parser.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:puc_minas/app/core/models/vehicle_model.dart';

class VehicleCard extends StatelessWidget {
  const VehicleCard({super.key, required this.vehicle});

  final VehicleModel vehicle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: vehicle.color),
        borderRadius: BorderRadius.circular(15),
        color: vehicle.color.withOpacity(0.3),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Marca: ${vehicle.brand}'),
              Text('Ano: ${vehicle.brand}'),
            ],
          ),
          Divider(color: vehicle.color),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Placa: ${vehicle.plate}'),
              Row(
                children: [
                  const Text('Cor: '),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: vehicle.color,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
