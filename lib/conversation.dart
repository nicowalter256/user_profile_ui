import 'package:flutter/material.dart';

class Convesations extends StatefulWidget {
  const Convesations({super.key});

  @override
  State<Convesations> createState() => _ConvesationsState();
}

class _ConvesationsState extends State<Convesations> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: size.height / 13,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  Icons.arrow_back,
                  size: 25,
                ),
                Text(
                  'Conversations',
                  style: TextStyle(fontSize: 25),
                ),
                Icon(
                  Icons.search,
                  size: 25,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                children: const [
                  Icon(
                    Icons.wechat,
                    size: 20,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Every body',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: size.height / 1.6,
              width: size.width,
              child:
                  ListView.builder(itemBuilder: (BuildContext context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                    height: size.height / 10,
                    width: size.width,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration:
                                    const BoxDecoration(shape: BoxShape.circle),
                              ),
                              Container(
                                height: 70,
                                width: 70,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(
                                            'https://cdn.pixabay.com/photo/2021/07/19/04/36/woman-6477171_960_720.jpg')),
                                    color: Colors.yellow,
                                    shape: BoxShape.circle),
                              ),
                              Positioned(
                                bottom: 15,
                                right: 15,
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  decoration: const BoxDecoration(
                                      color: Colors.green,
                                      shape: BoxShape.circle),
                                ),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Nicholas Walter',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text('Hey how have been?')
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('3 mins ago'),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 10,
                                width: 10,
                                color: Colors.purple,
                              )
                            ],
                          )
                        ]),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
