import 'package:flutter/material.dart';

import '../models/doctor.dart';

class DoctorDetailsStl extends StatelessWidget {
  final Doctor doctor;

  const DoctorDetailsStl({Key? key, required this.doctor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctor Details'),
      ),
      body: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(
              doctor.photo,
            ),
            radius: 100,
          ),
          Text(
            doctor.name,
            style: const TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
          ),
          Text(
            doctor.spe,
            style: const TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
          ),
          Text(
            doctor.clinicAddress,
            style: const TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
          ),
          Text(
            'Fee: Rs. ${doctor.fee}',
            style: const TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }
}
