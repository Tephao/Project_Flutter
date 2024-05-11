import 'package:flutter/material.dart';

class DeleteAlertModel extends StatefulWidget {
  const DeleteAlertModel({super.key});

  @override
  State<DeleteAlertModel> createState() => _DeleteAlertModelState();
}

class _DeleteAlertModelState extends State<DeleteAlertModel> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      title: const Text('Excluir veícuilo'),
      content: const Text(
        'Você tem certeza que deseja excluir o veículo',
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: const Text('Cancelar'),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: const Text('Excluir'),
        ),
      ],
    );
  }
}
