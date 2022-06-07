import 'package:flutter/material.dart';

import '../models/doctor.dart';

class DoctorDetailsStf extends StatefulWidget {
  final Doctor doctor;

  const DoctorDetailsStf({Key? key, required this.doctor}) : super(key: key);

  @override
  State<DoctorDetailsStf> createState() => _DoctorDetailsStfState();
}

class _DoctorDetailsStfState extends State<DoctorDetailsStf> {
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
              widget.doctor.photo,
            ),
            radius: 100,
          ),
          Text(
            widget.doctor.name,
            style: const TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
          ),
          Text(
            widget.doctor.spe,
            style: const TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
          ),
          Text(
            widget.doctor.clinicAddress,
            style: const TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
          ),
          Text(
            'Fee: Rs. ${widget.doctor.fee}',
            style: const TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }
}
