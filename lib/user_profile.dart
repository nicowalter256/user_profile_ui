import 'package:flutter/material.dart';
import 'package:user_profile/constants.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(children: [
          const SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.arrow_back),
              Row(
                children: const [
                  Text('Seting'),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.settings)
                ],
              )
            ],
          ),
          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(Constants.profileImage),
                  fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('John Doe'),
          const SizedBox(
            height: 10,
          ),
          const Text('Photograpgy, Traveling and dancing'),
          const SizedBox(
            height: 10,
          ),
          const Text('London UK'),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.edit),
              SizedBox(
                width: 10,
              ),
              Text('Edit profile')
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Constants.whiteBG,
                height: 100,
                width: 100,
                child: Column(
                  children: const [Text('Post'), Text('244')],
                ),
              ),
              Container(
                color: Constants.whiteBG,
                height: 100,
                width: 100,
                child: Column(
                  children: const [Text('Followers'), Text('244')],
                ),
              ),
              Container(
                color: Constants.whiteBG,
                height: 100,
                width: 100,
                child: Column(
                  children: const [Text('Follows'), Text('244')],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 200,
                  width: 150,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(Constants.bg1),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(Constants.bg2),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 100,
                      width: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(Constants.bg3),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
