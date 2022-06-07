import 'package:flutter/material.dart';
import 'package:navigator_pseb_bridge_10b/screens/doctor_details_stl.dart';

import '../models/doctor.dart';
import '../util/data_store.dart';
import 'doctor_details_stf.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Doctors'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: DataStore.doctors.length,
            itemBuilder: (context, index) {
              Doctor doctor = DataStore.doctors[index];

              return GestureDetector(
                onTap: () {
                  // Navigator.of(context)
                  //     .push(MaterialPageRoute(builder: (context) {
                  //   return DoctorDetailsStl(doctor: doctor);
                  // }));


                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return DoctorDetailsStf(doctor: doctor);
                  }));
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(bottom: 16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Image.asset(
                            doctor.photo,
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            doctor.name,
                            style: const TextStyle(
                                fontSize: 20, fontStyle: FontStyle.italic),
                          ),
                          Text(
                            doctor.spe,
                            style: const TextStyle(
                                fontSize: 20, fontStyle: FontStyle.italic),
                          ),
                          Text(
                            doctor.clinicAddress,
                            style: const TextStyle(
                                fontSize: 20, fontStyle: FontStyle.italic),
                          ),
                          Text(
                            'Fee: Rs. ${doctor.fee}',
                            style: const TextStyle(
                                fontSize: 20, fontStyle: FontStyle.italic),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
