import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:heocondihoc/models/color.dart';
import 'package:heocondihoc/models/users_model.dart';
import 'package:heocondihoc/screens/editprofilescreen.dart';

class HeaderInfo extends StatefulWidget {
  const HeaderInfo({super.key});

  @override
  State<HeaderInfo> createState() => _HeaderInfoState();
}

class _HeaderInfoState extends State<HeaderInfo> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  flex: 3,
                  child: CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.5),
                    radius: 40,
                    child: const Icon(
                      Icons.person_outline,
                      color: myColor,
                      size: 70,
                    ),
                  )),
              Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${loggedInUser.username}',
                          style: const TextStyle(color: myColor, fontSize: 22)),
                      const Gap(10),
                      const Text('Level: 2', style: TextStyle(color: myColor))
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: IconButton(
                    icon: const Icon(Icons.pending_actions_outlined),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EditProfileScreen()));
                    },
                    color: Colors.green,
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.ac_unit_sharp,
                size: 50,
                color: Colors.brown,
              ),
              Column(
                children: [
                  Row(
                    children: const [
                      Text('100/200', style: TextStyle(color: myColor)),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      )
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        '================',
                        style: TextStyle(color: myColor),
                      ),
                      Text(
                        '================',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
              const Icon(
                Icons.ac_unit_sharp,
                size: 50,
                color: Colors.grey,
              )
            ],
          ),
        ],
      ),
    );
  }
}
